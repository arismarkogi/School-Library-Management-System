from flask import Flask, render_template, request, flash, redirect, url_for, abort, session
from flask_mysqldb import MySQL
from flask_mail import Mail, Message
import MySQLdb.cursors
from school_library_system import app, db, mail
import mysql.connector
import datetime
import subprocess
from datetime import datetime




@app.route('/', methods=['POST', 'GET'])
def landing():

    if 'login' in request.form:

        return redirect('/login')

    elif 'register_simple_user' in request.form:

        return redirect('/register_simple_user')
    
    elif 'register_school_admin' in request.form:

        return redirect('/register_school_admin')

    return render_template('landing.html')

@app.route('/register_simple_user', methods = ['GET','POST'])
def register_simple_user():
    
    username = request.form.get('username')
    password = request.form.get('password')
    email = request.form.get('email')
    name = request.form.get('name')
    surname = request.form.get('surname')
    user_type = request.form.get('user_type')
    birthdate = request.form.get('birthdate')
    school_name = request.form.get('school_name')



    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute("SELECT name FROM school")
    school_names = cursor.fetchall()
    cursor.close()

    if not username or not password or not email or not name or not surname or not user_type or not birthdate or not school_name:
        
        return render_template ("register_simple_user.html", msg = "Συμπλήρωσε όλα τα πεδία", school_names = school_names)
    
    else:
        cursor = db.connection.cursor()
        cursor.execute(f"SELECT * FROM users u WHERE u.username = '{ username }' OR u.email = '{ email }'")
        result = cursor.fetchall()
        cursor.close()
        
        if result:

            msg = "Το username ή το email υπάρχει ήδη"

        else:

            school_query = f"SELECT school_id FROM school WHERE name = '{ school_name }'"
            
            cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
            cursor.execute(school_query)
            school_id = cursor.fetchall()[0]['school_id']
            cursor.close()

            query = f"INSERT INTO users (username, password, email) VALUES ('{ username }', '{ password }', '{ email }');"

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

            query = "SET @last_user_id = LAST_INSERT_ID();"

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

            query = f"""
                    INSERT INTO simple_user (user_id, user_type, school_id, name, surname, birthdate) 
                    VALUES (@last_user_id, '{ user_type }',{ school_id } , '{ name }', '{ surname }', '{ birthdate }');
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()
            
            msg = "Η εγγραφή ολοκλρώθηκε επιτυχώς!"

    return render_template("register_simple_user.html", school_names = school_names, msg = msg)

@app.route('/register_school_admin', methods = ['GET','POST'])
def register_school_admin():
    
    username = request.form.get('username')
    password = request.form.get('password')
    email = request.form.get('email')
    name = request.form.get('name')
    surname = request.form.get('surname')
    school_name = request.form.get('school_name')



    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute("SELECT name FROM school")
    school_names = cursor.fetchall()
    cursor.close()

    if not username or not password or not email or not name or not surname or not school_name:
        
        return render_template ("register_school_admin.html", msg = "Συμπλήρωσε όλα τα πεδία", school_names = school_names)
    
    else:
        cursor = db.connection.cursor()
        cursor.execute(f"SELECT * FROM users u WHERE u.username = '{ username }' OR u.email = '{ email }'")
        result = cursor.fetchall()
        cursor.close()
        
        if result:

            msg = "Το username ή το email υπάρχει ήδη"

        else:

            school_query = f"SELECT school_id FROM school WHERE name = '{ school_name }'"
            
            cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
            cursor.execute(school_query)
            school_id = cursor.fetchall()[0]['school_id']
            cursor.close()

            query = f"INSERT INTO users (username, password, email) VALUES ('{ username }', '{ password }','{ email }');"

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

            query = "SET @last_user_id = LAST_INSERT_ID();"

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

            query = f"""
                    INSERT INTO school_admin (user_id, school_id, name, surname) 
                    VALUES (@last_user_id, { school_id } , '{ name }', '{ surname }');
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()
            
            msg = "Η εγγραφή ολοκλρώθηκε επιτυχώς!"

    return render_template("register_school_admin.html", school_names = school_names, msg = msg)

@app.route('/login', methods=['POST','GET'])
def login():
    
    message = ''
    username = None
    password = None

    # Check if "username" and "password" POST requests exist (user submitted form)
    if request.method == 'POST'and 'username' in request.form and 'password' in request.form:
        # Create variables for easy access
        username = request.form['username']
        password = request.form['password']

        # Create a cursor to interact with the database
        cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)

        # Check if the username and password match
        cursor.execute("SELECT user_id FROM users WHERE username = %s AND password = %s", (username, password))
        account = cursor.fetchone()
        # Close the cursor
        cursor.close()

        if account:
            
            user_id = int(account['user_id'])
            session['loggedin'] = True
            session['id'] = user_id
            session['username'] = username

            # Check if the user is an admin
            cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
            cursor.execute("SELECT * FROM sysadmin WHERE user_id = %s", (user_id,))
            sysadmin = cursor.fetchone()
            cursor.close()

            if sysadmin:
                return redirect('/sysadmin')
            else:
                # Check if the user is a school admin
                cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
                cursor.execute("SELECT * FROM school_admin WHERE user_id = %s", (user_id,))
                school_admin = cursor.fetchone()
                cursor.close()

                if school_admin:

                    if not school_admin['active']:
                        return render_template('login.html', msg = 'Ο λογαριασμός σας είναι ανενεργός')

                    return redirect('/school_admin')
                else:
                    # Check if the user is a simple user (teacher or student)
                    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
                    cursor.execute("SELECT * FROM simple_user WHERE user_id = %s", (user_id,))
                    simple_user = cursor.fetchone()
                    cursor.close()

                    if simple_user:
                        
                        if not simple_user['active']:
                            return render_template('login.html', msg = 'Ο λογαριασμός σας είναι ανενεργός')
                        
                        return redirect('/simple_user')

        else:
            return render_template('login.html', msg = 'Μη έγκυρο Όνομα Χρήστη ή Κωδικός')
    

    elif request.method == 'POST' and 'email' in request.form:

        email = request.form['email'].encode('utf-8')

        # Retrieve the user's password from the database based on the provided email
        cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute("SELECT password FROM users WHERE email = %s", (email,))
        user = cursor.fetchone()
        cursor.close()

        """
        Στην πραγματικότητα δεν μπορούμε να στείλουμε καθώς πρέπει να πληρώσουμε για τις υπηρεσίες του SMTP server
        Όμως ο κώδικας είναι σωστός καθώς: 
        στην περίπτωση που το email δεν υπάρχει στην βάση εκτυπώνει το μήνυμα 'Μη Έγκυρο email!'
        ενω σε περίπτωση που υπάρχει το email έχουμε το error: smtplib.SMTPServerDisconnected: Connection unexpectedly closed
        """
        if user:
            password = user['password']

            # Create and send the password recovery email
            msg = Message('Ανάκτηση Κωδικού', sender='arismarkog@proton.me', recipients=[email])
            msg.body = f"Ο Κωδικός σου είναι: {password}"
            mail.send(msg)

            # Display a success message to the user
            return render_template('login.html', msg='Ένα email με τον κωδικό πρόσβασης έχει σταλεί στη διεύθυνση που παρέχατε!')

        else:
            return render_template('login.html', msg='Μη έγκυρο email!')

    return render_template('login.html')




@app.route('/sysadmin', methods=['GET', 'POST'])
def sysadmin():

    msg = ""
    
    user_id = session['id']

    query = f"""
            SELECT u.username, u.email, a.name, a.surname FROM users u 
            INNER JOIN sysadmin a ON a.user_id = u.user_id
            WHERE u.user_id = {user_id};
            """

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    data = cursor.fetchone()
    cursor.close()


    if request.method == 'POST':
        
        if 'create_backup' in request.form:
            # Backup file name
            backup_file = f'{app.config["MYSQL_DB"]}_backup.sql'

            # Create the backup command
            command = f'mysqldump -h {app.config["MYSQL_HOST"]} -u {app.config["MYSQL_USER"]} -p{app.config["MYSQL_PASSWORD"]} {app.config["MYSQL_DB"]} > {backup_file}'

            # Execute the backup command
            result = subprocess.run(command, shell=True, capture_output=True, text=True)

            if result.returncode == 0:
                msg = f'Η δημιουργία αντιγράφου ασφαλείας ({backup_file}) ήταν επιτυχής!'
            else:
                msg = 'Η δημιουργία αντιγράφου ασφαλείας απέτυχε!'

            return render_template('sysadmin.html',data = data, msg=msg)

        elif 'restore' in request.form:
           
            # Specify the backup file to restore
            backup_file = f'{app.config["MYSQL_DB"]}_backup.sql'
            # Create the restore command
            command = f'mysql -h {app.config["MYSQL_HOST"]} -u {app.config["MYSQL_USER"]} -p{app.config["MYSQL_PASSWORD"]} {app.config["MYSQL_DB"]} < {backup_file}'

            # Execute the restore command
            result = subprocess.run(command, shell=True, capture_output=True, text=True)

            if result.returncode == 0:
                msg = 'Η αποκατάσταση της βάσης δεδομένων από το αντίγραφο ασφαλείας ήταν επιτυχής!'
            else:
                msg = 'Η αποκατάσταση της βάσης δεδομένων από το αντίγραφο ασφαλείας απέτυχε!'

            return render_template('sysadmin.html', data = data, msg=msg)
        
        # 3.1.1
        elif 'show_borrows' in request.form:
            
            return redirect('/sysadmin/borrows_per_school')
        
        # 3.1.2
        elif 'show_teachers_authors' in request.form:

            return redirect('sysadmin/teachers_authors')

        # 3.1.3
        elif 'show_teachers2' in request.form:

            return redirect('/sysadmin/borrows_young_teachers')
        
        # 3.1.4
        elif 'show_authors1' in request.form:
            
            return redirect('/sysadmin/authors_no_borrows')

        # 3.1.5
        elif 'show_school_admins' in request.form:
            
            return redirect('/sysadmin/school_admins_borrows')
        
        # 3.1.6
        elif 'show_categories' in request.form:

            return redirect('/sysadmin/top3_categories')
        
        # 3.1.7
        elif 'show_authors3' in request.form:
            
            return redirect('/sysadmin/authors_5less')

        elif 'school_admin_requests' in request.form:
            
            return redirect('/sysadmin/school_admin_requests') 
        
        elif 'add_school' in request.form:

            return redirect('/sysadmin/add_school')

        elif 'change_password' in request.form:

            return redirect('/sysadmin/change_password')

        elif 'change_data' in request.form:

            return redirect('/sysadmin/change_data')

    return render_template('sysadmin.html',msg = msg, data = data)



@app.route('/sysadmin/borrows_per_school',  methods=['GET', 'POST'])
def borrows_per_school():
    query = """ 
            SELECT s.name AS school_name, COUNT(*) AS borrow_count
            FROM borrow AS b
            INNER JOIN simple_user AS u ON b.user_id = u.user_id
            INNER JOIN school AS s ON u.school_id = s.school_id
            """
    if 'month_bor' in request.form or 'year_bor' in request.form:

        month = int(request.form['month_bor'])
        year = int(request.form['year_bor'])
        if month != 0:
            query += f" WHERE MONTH(borrow_date) = {month}"
        if year != 0:
            if month != 0:
                query += " AND"
            else: 
                query += " WHERE"
            query += f" YEAR(borrow_date) = {year}"
            
    query += " GROUP BY school_name;"
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    borrows = cursor.fetchall()
    cursor.close()

    return render_template("borrows_per_school.html", borrows=borrows)


@app.route('/sysadmin/teachers_authors', methods = ['GET', 'POST'])
def show_teachers_authors():
    teachers = {}
    authors = {}

    categories_query = "SELECT category_name FROM category;"
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(categories_query)
    categories = cursor.fetchall()
    cursor.close()

    if 'category' in request.form:
        query = f"""
                SELECT DISTINCT CONCAT(a.surname, ' ', a.name) AS author_name
                FROM category c
                INNER JOIN book_category bc ON c.category_name = bc.category_name
                INNER JOIN book b ON b.isbn = bc.isbn 
                INNER JOIN book_author a ON a.isbn = b.isbn
                WHERE c.category_name = '{request.form['category']}';
                """
        cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute(query)
        authors = cursor.fetchall()
        cursor.close()
        
        my_date = datetime.now().strftime('%Y-%m-%d')
        date_parts = my_date.split('-')
        date_parts[0] = int(date_parts[0]) - 1
        date_parts[0] = str(date_parts[0])
        old_date = '-'.join(date_parts)
        query = f"""
                SELECT DISTINCT CONCAT(t.surname, ' ', t.name) AS teacher_name
                FROM category c
                INNER JOIN book_category bc ON c.category_name = bc.category_name
                INNER JOIN book b ON b.isbn = bc.isbn 
                INNER JOIN borrow bor ON bor.isbn = b.isbn
                INNER JOIN simple_user t ON t.user_id = bor.user_id
                WHERE c.category_name = '{request.form['category']}' AND bor.borrow_date <= '{my_date}' AND bor.borrow_date > '{old_date}' AND t.user_type = 'teacher';
                """
        cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute(query)
        teachers = cursor.fetchall()
        cursor.close()


    return render_template("teachers_authors.html", teachers = teachers, authors = authors, categories = categories)

@app.route('/sysadmin/borrows_young_teachers',  methods=['GET', 'POST'])
def borrows_young_teachers():
    query = """
            SELECT su.name, su.surname, su.age, COUNT(*) AS borrow_count
            FROM simple_user su
            INNER JOIN borrow b ON su.user_id = b.user_id
            WHERE su.user_type = 'teacher'
            AND su.age < 40
            GROUP BY su.user_id
            HAVING borrow_count = (
            SELECT MAX(borrow_count)
            FROM (
            SELECT COUNT(*) AS borrow_count
            FROM borrow
                INNER JOIN simple_user ON borrow.user_id = simple_user.user_id
                WHERE simple_user.user_type = 'teacher' AND simple_user.age < 40
                GROUP BY simple_user.user_id
                ) AS bor_count
                );
            """

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    teachers = cursor.fetchall()
    cursor.close()

    return render_template("borrows_young_teachers.html", teachers=teachers)


@app.route('/sysadmin/school_admins_borrows', methods=['GET', 'POST'])
def school_admins_borrows():
    query = """
            SELECT a.name, a.surname, s.name AS school_name, COUNT(*) AS borrow_count
            FROM school_admin a
            INNER JOIN school s ON s.school_id = a.school_id
            INNER JOIN borrow b ON b.admin_id = a.user_id
             """

    my_date = datetime.now().strftime('%Y-%m-%d')
    
    if 'my_date' in request.form:
        my_date = request.form['my_date']
    
    date_parts = my_date.split('-')
    date_parts[0] = int(date_parts[0]) - 1
    date_parts[0] = str(date_parts[0])
    old_date = '-'.join(date_parts)
    
    query += f" WHERE b.borrow_date <= '{my_date}' AND b.borrow_date >= '{old_date}'"
    
    query += " GROUP BY a.name, a.surname, s.name HAVING COUNT(*) > 20 ORDER BY borrow_count DESC;"

    cursor = db.connection.cursor()
    cursor.execute(query)
    school_admins = cursor.fetchall()
    cursor.close()

    return render_template("school_admins_borrows.html", school_admins = school_admins, my_date = my_date, old_date = old_date)



@app.route('/sysadmin/top3_categories', methods=['GET', 'POST'])
def top3_categories():
    query = """
            SELECT bc1.category_name , bc2.category_name, COUNT(*) AS borrow_count
            FROM borrow b
            INNER JOIN school_admin a ON a.user_id = b.admin_id
            INNER JOIN library_book lb ON b.isbn = lb.isbn AND a.school_id = lb.school_id
            INNER JOIN book_category bc1 ON lb.isbn = bc1.isbn
            INNER JOIN book_category bc2 ON lb.isbn = bc2.isbn
            WHERE bc1.category_name < bc2.category_name
            GROUP BY bc1.category_name, bc2.category_name
            ORDER BY borrow_count DESC
            LIMIT 3
            """

    cursor = db.connection.cursor()
    cursor.execute(query)
    categories = cursor.fetchall()
    cursor.close()
    
    return render_template("top3_categories.html", categories = categories)



@app.route('/sysadmin/authors_no_borrows',  methods=['GET', 'POST'])
def authors_no_borrows():
    query = """
            SELECT DISTINCT a.* FROM author a
            WHERE NOT EXISTS(
            SELECT 1 FROM book_author ba
            INNER JOIN borrow br ON ba.isbn = br.isbn
            WHERE a.name = ba.name AND a.surname = ba.surname)
            """
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    authors = cursor.fetchall()
    cursor.close()

    return render_template("authors_no_borrows.html", authors=authors)

@app.route('/sysadmin/authors_5less', methods=['GET','POST'])
def authors_5less():
    query = """
            SELECT author.surname, author.name FROM author
            INNER JOIN book_author ON author.surname = book_author.surname AND author.name = book_author.name
            GROUP BY author.surname, author.name
            HAVING COUNT(*)  + 4 < (
            SELECT MAX(book_count)
            FROM (
            SELECT COUNT(*) AS book_count FROM book_author
            GROUP BY surname, name) AS subquery);
            """
                
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    authors = cursor.fetchall()
    cursor.close()

    return render_template('authors_5less.html', authors = authors)
        
@app.route('/sysadmin/add_school', methods=['GET','POST'])
def add_school():

    name = request.form.get('name')
    principal_name = request.form.get('principal_name')
    phone_number = request.form.get('phone_number')
    city = request.form.get('city')
    email = request.form.get('email')
    address = request.form.get('address')

    if not name or not principal_name or not email or not city or not phone_number or not address:
        
        return render_template ("add_school.html", msg = "Συμπλήρωσε όλα τα πεδία")
    
    else:
        cursor = db.connection.cursor()
        cursor.execute(f"SELECT * FROM school s WHERE s.name = '{ name }' OR s.email = '{ email }'")
        result = cursor.fetchall()
        cursor.close()
        
        if result:

            msg = "Το Σχολείο ή το email υπάρχει ήδη"

        else:

            query = f"""INSERT INTO school (name, principal_name, email, city, address, phone_number) 
                    VALUES ('{ name }', '{ principal_name }', '{ email }', '{ city }', '{ address }', { phone_number });
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()
            
            msg = "Η εγγραφή ολοκλρώθηκε επιτυχώς!"

    return render_template("add_school.html", msg = msg)

@app.route('/sysadmin/school_admin_requests', methods = ['GET','POST'])
def school_admin_requests():


    msg = ""

    query = f"""SELECT sa.name, sa.surname, u.username, u.user_id, s.name AS school_name FROM school_admin sa
                INNER JOIN users u ON sa.user_id = u.user_id
                INNER JOIN school s ON sa.school_id = s.school_id
                WHERE sa.active = FALSE;
            """

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    users = cursor.fetchall()
    cursor.close()

    if 'activate' in request.form:

        query = f"""
                UPDATE school_admin
                SET active = TRUE
                WHERE user_id = { request.form['user_id'] };
                """ 

        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()

        query = f"""
                UPDATE school
                SET school_admin_id = { request.form['user_id'] }
                WHERE name = '{ request.form['school_name'] }';
                """
        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()

        return redirect('/sysadmin/school_admin_requests')

    return render_template('school_admin_requests.html', users = users, msg = msg)


@app.route('/sysadmin/change_password', methods=['GET','POST'])
def change_password_a():

    user_id = session['id']
    msg = ""

    if 'submit' in request.form:

        password = request.form.get('password')
        if password:
            query = f"""
                    UPDATE users
                    SET password = '{password}'
                    WHERE user_id =  {user_id}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

            msg = "O Κωδικός σας άλλαξε επιτυχώς!"



    return render_template('change_password_sysadmin.html', msg = msg)

@app.route('/sysadmin/change_data', methods=['GET','POST'])
def change_data_a():

    user_id = session['id']
    msg = ""

    if 'submit_name' in request.form or 'submit_surname' in request.form or 'submit_username' in request.form or 'submit_email' in request.form:

        flag = False

        name = request.form.get('name')
        surname = request.form.get('surname')
        username = request.form.get('username')
        email = request.form.get('email')

        if name:

            flag = True
            query = f"""
                    UPDATE sysadmin
                    SET name = '{name}'
                    WHERE user_id =  {user_id}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

        if surname:

            flag = True
            query = f"""
                    UPDATE sysadmin
                    SET surname = '{surname}'
                    WHERE user_id =  {user_id}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

        if username:

            cursor = db.connection.cursor()
            cursor.execute(f"SELECT * FROM users u WHERE u.username = '{ username }'")
            result = cursor.fetchall()
            cursor.close()
            if result:
                flag = False
                msg = "Το username υπάρχει ήδη"
            else:

                flag = True
                query = f"""
                        UPDATE users
                        SET username = '{username}'
                        WHERE user_id =  {user_id}
                        """

                cursor = db.connection.cursor()
                cursor.execute(query)
                db.connection.commit()
                cursor.close()

        if email:

            cursor = db.connection.cursor()
            cursor.execute(f"SELECT * FROM users u WHERE u.email = '{ email }'")
            result = cursor.fetchall()
            cursor.close()
            if result:
                flag = False
                msg = "Το email υπάρχει ήδη"
            
            else:
                
                flag = True
                query = f"""
                        UPDATE users
                        SET email = '{email}'
                        WHERE user_id =  {user_id}
                        """

                cursor = db.connection.cursor()
                cursor.execute(query)
                db.connection.commit()
                cursor.close()
        if flag:
            msg = "Τα στοιχεία σας ενημερώθηκας επιτυχώς επιτυχώς!"
    
    if 'return_page' in request.form:

        redirect('sysadmin')



    return render_template('change_data_sysadmin.html', msg = msg)




@app.route('/school_admin',  methods=['GET', 'POST'])
def school_admin():
    
    user_id = session['id']

    query = f"""
            SELECT u.username, u.email, sa.name, sa.surname, s.name AS school_name FROM users u 
            INNER JOIN school_admin sa ON sa.user_id = u.user_id
            INNER JOIN school s ON s.school_id = sa.school_id
            WHERE u.user_id = {user_id};
            """

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    data = cursor.fetchone()
    cursor.close()


    if 'show_books' in request.form:

        return redirect('/school_admin/show_books')

    elif 'show_borrows' in request.form:

        return redirect('/school_admin/show_borrows')
    
    elif 'show_reviews' in request.form:

        return redirect('/school_admin/show_reviews')

    elif 'simple_user_status' in request.form:

        return redirect('/school_admin/simple_user_status')

    elif 'reservations' in request.form:

        return redirect('/school_admin/reservations')

    elif 'borrow_return' in request.form:

        return redirect('/school_admin/borrow_return')

    elif 'add_library_book' in request.form:

        return redirect('/school_admin/add_library_book')

    elif 'change_book_data' in request.form:

        return redirect('/school_admin/change_book_data')

    elif 'change_password' in request.form:

        return redirect('/school_admin/change_password')

    elif 'reviews' in request.form:

        return redirect('/school_admin/reviews')

    elif 'change_data' in request.form:

            return redirect('/school_admin/change_data')


    return render_template('school_admin.html', data = data)


@app.route('/school_admin/show_books', methods=['GET','POST'])
def show_books():

    category = request.form.get('category')
    author = request.form.get('author')
    title = request.form.get('title')
    copies = request.form.get('copies')
    
    user_id = session['id']

    categories_query = "SELECT category_name FROM category;"
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(categories_query)
    categories = cursor.fetchall()
    cursor.close()

    authors_query = f"""SELECT DISTINCT ba.name, ba.surname FROM book_author ba
                    INNER JOIN library_book lb ON lb.isbn = ba.isbn
                    INNER JOIN school_admin a ON a.school_id = lb.school_id
                    WHERE a.user_id = {user_id};
                    """
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(authors_query)
    authors = cursor.fetchall()
    cursor.close()

    sorted_authors = sorted(authors, key=lambda x: (x['surname'], x['name']), reverse=False)

    author_names = [f"{author['surname']} {author['name']}" for author in sorted_authors]

    titles_query = f""" SELECT b.title FROM book b
                        INNER JOIN library_book lb ON b.isbn = lb.isbn
                        INNER JOIN school_admin sa ON sa.school_id = lb.school_id
                        WHERE sa.user_id = {user_id};
                   """
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(titles_query)
    titles = cursor.fetchall()
    cursor.close()

    usernames_query = f""" 
                        SELECT DISTINCT u.username FROM users u
                        INNER JOIN simple_user su  ON su.user_id = u.user_id
                        INNER JOIN school_admin sa ON sa.school_id = su.school_id
                        LEFT JOIN borrow b ON b.user_id = su.user_id
                        WHERE sa.user_id = {user_id} 
                        AND ((su.cur_borrow_num < 2 AND su.user_type = 'student') OR (su.user_type = 'teacher' AND su.cur_borrow_num = 0))
                        AND (b.late != TRUE OR b.borrow_id IS NULL);
                        """
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(usernames_query)
    usernames = cursor.fetchall()
    cursor.close()

    query = f'''
            SELECT b.isbn, b.title, b.pages, b.language, b.keywords, b.summary, b.publisher, b.image_url, lb.copies
            FROM book b
            INNER JOIN library_book lb ON b.isbn = lb.isbn
            INNER JOIN school_admin sa ON lb.school_id = sa.school_id 
            '''
    if category != None and category != 'all':

        query += " INNER JOIN book_category bc ON bc.isbn = b.isbn"

    if author != None and author != 'all':

        query += " INNER JOIN book_author ba ON ba.isbn = b.isbn"


    query += f" WHERE sa.user_id = {user_id}"

    if category != None  and category != 'all':

        query += f" AND bc.category_name = '{ category }' "

    if author != None  and author != 'all':
        author_split = author.split(' ')
        query += f" AND ba.name = '{ author_split[1] }' AND ba.surname = '{ author_split[0] }'"

    if title != None and title != 'all':
        query += f" AND b.title = '{title}'"

    if copies == "asc":

        query += " ORDER BY lb.copies ASC"
    
    elif copies == "desc":

        query += " ORDER BY lb.copies DESC"


    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    books = cursor.fetchall()
    cursor.close()

    if 'borrow' in request.form and 'username' in request.form and request.form['username'] != 'noone':
        
        username = request.form.get('username')
        isbn = request.form.get('isbn')

        query = f"SELECT user_id FROM users WHERE username = '{username}'"

        cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute(query)
        simple_user_id = cursor.fetchone()['user_id']
        cursor.close()

        query = f"""
                INSERT INTO borrow (user_id, admin_id, isbn, borrow_date)
                VALUES ({ simple_user_id }, { user_id } , {isbn}, CURRENT_DATE())
                """

        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()

        return redirect('/school_admin/show_books')

    return render_template('show_books.html', books = books, categories = categories, author_names = author_names, titles = titles, usernames = usernames)

@app.route('/school_admin/show_borrows', methods=['GET','POST'])
def show_borrows():

    user_id = session['id']

    name = request.form.get('name')
    surname = request.form.get('surname')
    days_late = request.form.get('days_late')

    names_query = f"""SELECT DISTINCT su.name FROM simple_user su 
                      INNER JOIN school_admin a ON su.school_id = a.school_id
                      WHERE a.user_id = {user_id};
                   """
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(names_query)
    names = cursor.fetchall()
    cursor.close()

    surnames_query = f"""SELECT DISTINCT su.surname FROM simple_user su 
                      INNER JOIN school_admin a ON su.school_id = a.school_id
                      WHERE a.user_id = {user_id};
                      """
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(surnames_query)
    surnames = cursor.fetchall()
    cursor.close()


    query = f"""
            SELECT s.name, s.surname, u.username, b.borrow_date, DATEDIFF(CURRENT_DATE, b.borrow_date) - 7 AS days_late
            FROM school_admin a 
            INNER JOIN simple_user s ON s.school_id = a.school_id
            INNER JOIN borrow b ON b.user_id = s.user_id
            INNER JOIN users u ON s.user_id = u.user_id
            WHERE a.user_id = {user_id} AND b.returned = FALSE AND DATEDIFF(CURRENT_DATE, b.borrow_date) > 7 
            """
    if name and name != 'all' :

        query += " AND s.name = '{name}'"
    
    if surname and surname != 'all':

        query += " AND s.surname = '{surname}'"

    if days_late == 'asc':

        query += " ORDER BY days_late ASC"

    elif days_late == 'desc':

        query += " ORDER BY days_late DESC"

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    borrows = cursor.fetchall()
    cursor.close()

    return render_template('show_borrows.html', borrows = borrows, names = names, surnames = surnames)

@app.route('/school_admin/show_reviews', methods=['GET','POST'])
def show_reviews():

    user_id = session['id']

    category = request.form.get('category')
    username = request.form.get('username')

    categories_query = "SELECT category_name FROM category;"
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(categories_query)
    categories = cursor.fetchall()
    cursor.close()

    usernames_query = f"""SELECT  u.username FROM users u
                    INNER JOIN simple_user su ON u.user_id = su.user_id
                    INNER JOIN school_admin a ON a.school_id = su.school_id
                    WHERE a.user_id = {user_id};
                    """
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(usernames_query)
    usernames = cursor.fetchall()
    cursor.close()

    query1 = f"""
            SELECT DISTINCT bc.category_name, AVG(rev.likert) AS avg_score FROM review rev
            INNER  JOIN simple_user su ON su.user_id = rev.user_id
            INNER  JOIN school_admin sa ON sa.school_id = su.school_id
            INNER  JOIN book b ON b.isbn = rev.isbn
            INNER  JOIN book_category bc ON bc.isbn = b.isbn
            WHERE  sa.user_id = {user_id}
            """
    if category and category != 'all':
        query1 += f" AND bc.category_name = '{ category }'"

    query1 += " GROUP BY bc.category_name;"

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query1)
    category_rev = cursor.fetchall()
    cursor.close()

    query2 = f"""
              SELECT AVG(rev.likert) AS avg_score, u.username FROM review rev
              INNER JOIN  simple_user su ON su.user_id = rev.user_id
              INNER JOIN users u ON u.user_id = su.user_id
              INNER JOIN school_admin sa ON sa.school_id = su.school_id
              WHERE sa.user_id = {user_id}
             """
    if username and username != 'all':

        query2 += f" AND u.username = '{ username }'"

    query2 += " GROUP BY u.username;"

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query2)
    users_rev = cursor.fetchall()
    cursor.close()



    return render_template('show_reviews.html', users_rev = users_rev, category_rev = category_rev, categories = categories, usernames = usernames)

@app.route('/school_admin/simple_user_status', methods = ['GET','POST'])
def simple_user_status():

    user_id = session['id']
    msg = ""

    query = f"""SELECT su.name, su.surname, u.username, su.active, u.user_id FROM simple_user su
                INNER JOIN users u ON su.user_id = u.user_id
                INNER JOIN school_admin sa ON sa.school_id = su.school_id
                WHERE sa.user_id = { user_id };
            """

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    users = cursor.fetchall()
    cursor.close()

    if 'activate' in request.form:

        query = f"""
                UPDATE simple_user
                SET active = TRUE
                WHERE user_id = { request.form['user_id'] };
                """ 

        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()


        return redirect('/school_admin/simple_user_status')

    elif 'deactivate' in request.form:

        query = f"""
                UPDATE simple_user
                SET active = FALSE
                WHERE user_id = {request.form['user_id']};
                """ 

        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()
        
        return redirect('/school_admin/simple_user_status')

    elif 'delete' in request.form:
        query = f"""
                DELETE FROM users 
                WHERE user_id = {request.form['user_id']};
                """ 

        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()

        query = f"""
                 DELETE FROM simple_user 
                 WHERE user_id = {request.form['user_id']};
                """ 

        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()

        return redirect('/school_admin/simple_user_status')


    return render_template('simple_user_status.html', users = users, msg = msg)


@app.route('/school_admin/borrow_return', methods = ['GET', 'POST'])
def borrow_return():

    user_id = session['id']

    msg = ""
    
    query = f"""
            SELECT u.username, b.isbn, b.borrow_date, b.borrow_id, bo.title FROM borrow b 
            INNER JOIN book bo ON bo.isbn = b.isbn
            INNER JOIN simple_user su ON su.user_id = b.user_id
            INNER JOIN users u ON u.user_id = su.user_id
            INNER JOIN school_admin sa ON sa.school_id = su.school_id
            WHERE sa.user_id = {user_id} AND b.returned = FALSE;
            """
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    borrows = cursor.fetchall()
    cursor.close()


    if  request.form.get('borrow_id'):

        borrow_id = request.form.get('borrow_id')

        query = f"""
                UPDATE borrow
                SET returned = TRUE, late = FALSE
                WHERE borrow_id =  { borrow_id };
                """

        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()


        return redirect('/school_admin/borrow_return')

    return render_template('borrow_return.html', borrows = borrows, msg = msg)


@app.route('/school_admin/reservations', methods=['POST','GET'])
def reservations():

    user_id = session['id']
    msg = ""
    query = f"""
            SELECT r.reservation_id, r.reservation_date, u.username, bo.title, bo.isbn,su.user_id FROM reservation r
            INNER JOIN simple_user su ON su.user_id = r.user_id
            INNER JOIN users u ON u.user_id = su.user_id
            INNER JOIN school_admin sa  ON sa.school_id = su.school_id
            INNER JOIN book bo ON bo.isbn = r.isbn
            WHERE sa.user_id = {user_id} AND r.cancelled = FALSE
            ORDER BY r.reservation_date ASC
            """

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    reservations = cursor.fetchall()
    cursor.close()

    if 'accept' in request.form:

        reservation_id = int(request.form.get('reservation_id'))

        query = f"""
                UPDATE reservation
                SET cancelled = TRUE
                WHERE reservation_id =  { reservation_id };
                """
        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()


        isbn = None
        simple_user_id = None

        for reservation in reservations:
        
            if int(reservation['reservation_id']) == reservation_id:
                
                simple_user_id = reservation['user_id']
                isbn = reservation['isbn']
                break


        query = f"""
                INSERT INTO borrow (user_id, admin_id, isbn, borrow_date)
                VALUES ({ simple_user_id }, { user_id } , {isbn}, CURRENT_DATE())
                """

        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()

        return redirect('/school_admin/reservations')

    return render_template('reservations.html', reservations = reservations, msg = msg)


@app.route('/school_admin/add_library_book', methods=['GET','POST'])
def add_library_book():

    user_id = session['id']

    query = f"SELECT isbn FROM book ORDER BY isbn ASC"
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    books = cursor.fetchall()
    cursor.close()

    if 'isbn' in request.form:

        isbn = request.form.get('isbn')

        if isbn == 'none':

            return redirect('/school_admin/add_library_book/book_not_exists')
        
        query = f"SELECT * FROM library_book WHERE isbn = {isbn}"
        cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute(query)
        my_isbn = cursor.fetchall()
        cursor.close()

        if  my_isbn:
            return render_template('add_library_book.html', books = books, msg = f"Το Βιβλίο με ISBN: {isbn} υπάρχει ήδη στην Βιβλιοθήκη")

        session['isbn'] = isbn
        return redirect('/school_admin/add_library_book/book_exists')

    return render_template('add_library_book.html', books = books)

@app.route('/school_admin/add_library_book/book_exists', methods=['POST','GET'])
def book_exists():

    if 'copies' in request.form:

        user_id = session['id']
        cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute(f"SELECT school_id FROM school_admin WHERE user_id = { user_id }")
        school_id = cursor.fetchone()['school_id']
        cursor.close()

        copies = request.form.get('copies')
        isbn = session['isbn']

        query = f"""
                INSERT INTO library_book(school_id, copies, isbn)
                VALUES ( { school_id }, { copies }, { isbn })
                """

        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()

    return render_template('book_exists.html')


@app.route('/school_admin/add_library_book/book_not_exists', methods=['POST','GET'])
def book_not_exists():

    categories_query = "SELECT category_name FROM category;"
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(categories_query)
    categories = cursor.fetchall()
    cursor.close()

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute("SELECT name, surname FROM author")
    authors = cursor.fetchall()
    cursor.close()

    sorted_authors = sorted(authors, key=lambda x: (x['surname'], x['name']), reverse=False)

    author_names = [f"{author['surname']} {author['name']}" for author in sorted_authors]

    if 'valid' in request.form:

        isbn = request.form.get('isbn')
        title = request.form.get('title')
        pages = request.form.get('pages')
        language = request.form.get('language')
        keywords = request.form.get('keywords')
        publisher = request.form.get('publisher')

        summary = request.form.get('summary')
        image_url = request.form.get('image_url')

        category1 = request.form.get('category1')
        category2 = request.form.get('category2')
        category3 = request.form.get('category3')

        author1 = request.form.get('author1')
        author2 = request.form.get('author2')
        author3 = request.form.get('author3')

        copies = request.form.get('copies')


        query = f"""
                INSERT INTO book (isbn, title, pages, language, keywords, publisher)
                VALUES ( {isbn}, '{title}', {pages}, '{language}', '{keywords}', '{publisher}' )
                """

        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()

        if summary:

            query = f"""
                    UPDATE book
                    SET summary = '{summary}'
                    WHERE isbn =  {isbn}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

        if image_url:

            query = f"""
                    UPDATE book
                    SET image_url = '{image_url}'
                    WHERE isbn =  {isbn}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

        author_split = author1.split(' ')
        query = f"""
                INSERT INTO book_author(isbn, name, surname)
                VALUES ({isbn}, '{author_split[1]}', '{author_split[0]}')
                """
        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close() 
        
        if author2 != 'none':
            author_split = author2.split(' ')
            query = f"""
                    INSERT INTO book_author(isbn, name, surname)
                    VALUES ({isbn}, '{author_split[1]}', '{author_split[0]}')
                    """
            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close() 

            if author3 != 'none':
                author_split = author3.split(' ')
                query = f"""
                        INSERT INTO book_author(isbn, name, surname)
                        VALUES ({isbn}, '{author_split[1]}', '{author_split[0]}')
                        """
                cursor = db.connection.cursor()
                cursor.execute(query)
                db.connection.commit()
                cursor.close() 

        query = f"""
                INSERT INTO book_category(isbn, category_name)
                VALUES ({isbn}, '{category1}')
                """
        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close() 

        if category2 != 'none':

            query = f"""
                    INSERT INTO book_category(isbn, category_name)
                    VALUES ({isbn}, '{category2}')
                    """
            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()
            if category3 != 'none':
                query = f"""
                        INSERT INTO book_category(isbn, category_name)
                        VALUES ({isbn}, '{category3}')
                        """
                cursor = db.connection.cursor()
                cursor.execute(query)
                db.connection.commit()
                cursor.close()  

        user_id = session['id']
        cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute(f"SELECT school_id FROM school_admin WHERE user_id = { user_id }")
        school_id = cursor.fetchone()['school_id']
        cursor.close()

        query = f"""
                INSERT INTO library_book(school_id, copies, isbn)
                VALUES ( { school_id }, { copies }, { isbn })
                """

        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()

        return redirect('/school_admin/add_library_book/book_not_exists')



    return render_template('book_not_exists.html', author_names=author_names, categories=categories)

@app.route('/school_admin/change_book_data', methods=['GET','POST'])
def change_book_data():

    user_id = session['id']

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(f"SELECT school_id FROM school_admin WHERE user_id = { user_id }")
    school_id = cursor.fetchone()['school_id']
    cursor.close()

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(f"SELECT isbn FROM library_book WHERE school_id = {school_id}")
    isbns = cursor.fetchall()
    cursor.close()

    categories_query = "SELECT category_name FROM category;"
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(categories_query)
    categories = cursor.fetchall()
    cursor.close()

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute("SELECT name, surname FROM author")
    authors = cursor.fetchall()
    cursor.close()

    sorted_authors = sorted(authors, key=lambda x: (x['surname'], x['name']), reverse=False)

    author_names = [f"{author['surname']} {author['name']}" for author in sorted_authors]

    if 'valid' in request.form:


        isbn  = request.form.get('isbn')
        title = request.form.get('title')
        pages = request.form.get('pages')
        language = request.form.get('language')
        keywords = request.form.get('keywords')
        publisher = request.form.get('publisher')

        summary = request.form.get('summary')
        image_url = request.form.get('image_url')

        category1 = request.form.get('category1')
        category2 = request.form.get('category2')
        category3 = request.form.get('category3')

        author1 = request.form.get('author1')
        author2 = request.form.get('author2')
        author3 = request.form.get('author3')

        copies = request.form.get('copies')  

        if title:

            query = f"""
                    UPDATE book
                    SET title = '{title}'
                    WHERE isbn =  {isbn}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()
        
        if pages:

            query = f"""
                    UPDATE book
                    SET pages = {pages}
                    WHERE isbn =  {isbn}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

        if language:

            query = f"""
                    UPDATE book
                    SET language = '{language}'
                    WHERE isbn =  {isbn}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

        if keywords:

            query = f"""
                    UPDATE book
                    SET keywords = '{keywords}'
                    WHERE isbn =  {isbn}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

        if publisher:

            query = f"""
                    UPDATE book
                    SET publisher = '{publisher}'
                    WHERE isbn =  {isbn}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()


        if image_url:

            query = f"""
                    UPDATE book
                    SET image_url = '{image_url}'
                    WHERE isbn =  {isbn}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()
        
        if summary:

            query = f"""
                    UPDATE book
                    SET summary = '{summary}'
                    WHERE isbn =  {isbn}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

        if copies != 'none':

            query = f"""
                    UPDATE library_book
                    SET copies = {copies}
                    WHERE isbn =  {isbn} AND school_id = {school_id}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()
        

        if category1 != 'none':

            query = f"""
                    DELETE FROM book_category
                    WHERE isbn = {isbn};
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

            query = f"""
                    INSERT INTO book_category(isbn, category_name)
                    VALUES ({isbn}, '{category1}')
                    """
            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close() 

            if category2 != 'none':

                query = f"""
                        INSERT INTO book_category(isbn, category_name)
                        VALUES ({isbn}, '{category2}')
                        """
                cursor = db.connection.cursor()
                cursor.execute(query)
                db.connection.commit()
                cursor.close()
                
                if category3 != 'none':
                    query = f"""
                            INSERT INTO book_category(isbn, category_name)
                            VALUES ({isbn}, '{category3}')
                            """
                    cursor = db.connection.cursor()
                    cursor.execute(query)
                    db.connection.commit()
                    cursor.close() 
        
        if author1 != 'none':

            query = f"""
                    DELETE FROM book_author
                    WHERE isbn = {isbn};
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

            author_split = author1.split(' ')
            query = f"""
                    INSERT INTO book_author(isbn, name, surname)
                    VALUES ({isbn}, '{author_split[1]}', '{author_split[0]}')
                    """
            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close() 
        
            if author2 != 'none':
                author_split = author2.split(' ')
                query = f"""
                        INSERT INTO book_author(isbn, name, surname)
                        VALUES ({isbn}, '{author_split[1]}', '{author_split[0]}')
                        """
                cursor = db.connection.cursor()
                cursor.execute(query)
                db.connection.commit()
                cursor.close() 

                if author3 != 'none':
                    author_split = author3.split(' ')
                    query = f"""
                            INSERT INTO book_author(isbn, name, surname)
                            VALUES ({isbn}, '{author_split[1]}', '{author_split[0]}')
                            """
                    cursor = db.connection.cursor()
                    cursor.execute(query)
                    db.connection.commit()
                    cursor.close()  

        return redirect('/school_admin/change_book_data')

    return render_template('change_book_data.html', categories=categories, author_names=author_names, isbns = isbns)

@app.route('/school_admin/change_password', methods=['GET','POST'])
def change_password_sa():

    user_id = session['id']
    msg = ""

    if 'submit' in request.form:

        password = request.form.get('password')
        
        if password:
            query = f"""
                    UPDATE users
                    SET password = '{password}'
                    WHERE user_id =  {user_id}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

            msg = "O Κωδικός σας άλλαξε επιτυχώς!"



    return render_template('change_password_school_admin.html', msg = msg)

@app.route('/school_admin/reviews', methods=['GET','POST'])
def approve_reviews():
    
    user_id = session['id']
    msg = ""
    
    query =f"""
            SELECT r.isbn, su.name, su.surname, r.likert, r.review_text, r.review_id FROM simple_user su 
            INNER JOIN review r ON r.user_id = su.user_id
            INNER JOIN school_admin sa ON su.school_id = sa.school_id
            WHERE sa.user_id = {user_id} AND approved = FALSE;
            """ 

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    reviews = cursor.fetchall()
    cursor.close()

    if  request.form.get('review_id'):

        review_id = request.form.get('review_id')

        query = f"""
                UPDATE review
                SET approved = TRUE
                WHERE review_id =  { review_id };
                """

        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()


        return redirect('/school_admin/reviews')

    return render_template('approve_reviews.html', reviews = reviews, msg = msg)

@app.route('/school_admin/change_data', methods=['GET','POST'])
def change_data_sa():

    user_id = session['id']
    msg = ""

    if 'submit_name' in request.form or 'submit_surname' in request.form or 'submit_email' in request.form or 'submit_username' in request.form:

        flag = False

        name = request.form.get('name')
        surname = request.form.get('surname')
        username = request.form.get('username')
        email = request.form.get('email')

        if name:

            flag = True
            query = f"""
                    UPDATE school_admin
                    SET name = '{name}'
                    WHERE user_id =  {user_id}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

        if surname:

            flag = True
            query = f"""
                    UPDATE school_admin
                    SET surname = '{surname}'
                    WHERE user_id =  {user_id}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

        if username:

            cursor = db.connection.cursor()
            cursor.execute(f"SELECT * FROM users u WHERE u.username = '{ username }'")
            result = cursor.fetchall()
            cursor.close()
            if result:
                flag = False
                msg = "Το username υπάρχει ήδη"
            else:

                flag = True
                query = f"""
                        UPDATE users
                        SET username = '{username}'
                        WHERE user_id =  {user_id}
                        """

                cursor = db.connection.cursor()
                cursor.execute(query)
                db.connection.commit()
                cursor.close()

        if email:

            cursor = db.connection.cursor()
            cursor.execute(f"SELECT * FROM users u WHERE u.email = '{ email }'")
            result = cursor.fetchall()
            cursor.close()
            if result:
                flag = False
                msg = "Το email υπάρχει ήδη"
            
            else:
                
                flag = True
                query = f"""
                        UPDATE users
                        SET email = '{email}'
                        WHERE user_id =  {user_id}
                        """

                cursor = db.connection.cursor()
                cursor.execute(query)
                db.connection.commit()
                cursor.close()
        
        if flag:
            msg = "Τα στοιχεία σας ενημερώθηκας επιτυχώς επιτυχώς!"
    
    if 'return_page' in request.form:

        return redirect('/school_admin')


    return render_template('change_data_school_admin.html', msg = msg)

@app.route('/simple_user',  methods=['GET', 'POST'])
def simple_user():

    user_id = session['id']

    query = f"""
            SELECT u.username, u.email, su.name, su.surname, su.user_type, s.name AS school_name, su.birthdate FROM users u 
            INNER JOIN simple_user su ON su.user_id = u.user_id
            INNER JOIN school s ON s.school_id = su.school_id
            WHERE u.user_id = {user_id};
            """

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    data = cursor.fetchone()
    cursor.close()

   
    if 'show_books' in request.form:
        
        return redirect('/simple_user/my_school_books')

    elif 'show_borbooks' in request.form:
        
        return redirect('simple_user/borrowed_books')

    elif 'reservations' in request.form:

        return redirect('/simple_user/reservations')

    elif 'change_password' in request.form:

        return redirect('/simple_user/change_password')
    
    elif 'reviews' in request.form:

        return redirect('/simple_user/reviews')

    elif 'change_data' in request.form:

            return redirect('/simple_user/change_data')


    return render_template('simple_user.html', data = data)

@app.route('/simple_user/borrowed_books', methods = ['GET', 'POST'])
def borrowed_books():

    user_id = session['id']
    query = f'''
    SELECT b.isbn, b.title, b.language, b.publisher, b.image_url, bor.borrow_date
    FROM book b
    INNER JOIN borrow bor ON b.isbn = bor.isbn
    INNER JOIN simple_user su ON bor.user_id = su.user_id
    WHERE su.user_id = {user_id};
    '''

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    books = cursor.fetchall()
    cursor.close()

    if 'review' in request.form:
        session['isbn'] = request.form.get('isbn')
        return redirect('/simple_user/write_review')

    return render_template('borrowed_books.html', books = books)

@app.route('/simple_user/my_school_books', methods = ['GET', 'POST'])
def my_school_books():
    
    user_id = session['id']

    data_query = f"SELECT user_type, res_num FROM simple_user WHERE user_id = {user_id};"
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(data_query)
    data = cursor.fetchone()
    cursor.close()


    category = request.form.get('category')
    author = request.form.get('author')
    title = request.form.get('title')
    
    user_id = session['id']


    categories_query = "SELECT category_name FROM category;"
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(categories_query)
    categories = cursor.fetchall()
    cursor.close()

    authors_query = f"""SELECT DISTINCT ba.name, ba.surname FROM book_author ba
                    INNER JOIN library_book lb ON lb.isbn = ba.isbn
                    INNER JOIN simple_user su ON su.school_id = lb.school_id
                    WHERE su.user_id = {user_id};
                    """

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(authors_query)
    authors = cursor.fetchall()
    cursor.close()

    sorted_authors = sorted(authors, key=lambda x: (x['surname'], x['name']), reverse=False)

    author_names = [f"{author['surname']} {author['name']}" for author in sorted_authors]



    titles_query = f""" SELECT b.title FROM book b
                        INNER JOIN library_book lb ON b.isbn = lb.isbn
                        INNER JOIN simple_user su ON su.school_id = lb.school_id
                        WHERE su.user_id = {user_id};
                   """
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(titles_query)
    titles = cursor.fetchall()
    cursor.close()

    
    query = f'''
            SELECT b.isbn, b.title, b.pages, b.language, b.keywords, b.summary, b.publisher, b.image_url
            FROM book b
            INNER JOIN library_book lb ON b.isbn = lb.isbn
            INNER JOIN simple_user su ON lb.school_id = su.school_id 
            '''
    if category != None and category != 'all':

        query += " INNER JOIN book_category bc ON bc.isbn = b.isbn"

    if author != None and author != 'all':

        query += " INNER JOIN book_author ba ON ba.isbn = b.isbn"


    query += f" WHERE su.user_id = {user_id}"

    if category != None  and category != 'all':

        query += f" AND bc.category_name = '{ category }' "

    if author != None  and author != 'all':
        author_split = author.split(' ')
        query += f" AND ba.name = '{ author_split[1] }' AND ba.surname = '{ author_split[0] }'"

    if title != None:
        query += f" AND b.title = '{title}'"

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    books = cursor.fetchall()
    cursor.close()

    query = f"""
            SELECT * FROM borrow bor
            INNER JOIN simple_user su ON bor.user_id = su.user_id
            WHERE su.user_id = {user_id} AND bor.late = TRUE AND bor.returned = FALSE
            """
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    late_borrows = cursor.fetchall()
    cursor.close()

    late = True

    if not late_borrows:

        late = False


    if 'reservation' in request.form:

        query = f"INSERT INTO reservation (user_id, isbn, reservation_date) VALUES ('{ user_id }', { request.form['isbn'] }, CURRENT_DATE());"

        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()

        return redirect('/simple_user/my_school_books')

    return render_template('my_school_books.html', books = books, author_names = author_names, titles = titles, categories = categories, data = data, late = late)

@app.route('/simple_user/reservations', methods = ['GET','POST'])
def user_reservations():

    user_id = session['id']

    msg = ""
    
    query = f"""
            SELECT r.isbn, r.reservation_date, r.reservation_id, b.title FROM reservation r 
            INNER JOIN book b ON b.isbn = r.isbn
            WHERE r.user_id = {user_id} AND r.cancelled = FALSE;
            """
    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    reservations = cursor.fetchall()
    cursor.close()

    if 'cancellation' in request.form:

        reservation_id = request.form['reservation_id']


        query = f"""
                UPDATE reservation
                SET cancelled = TRUE
                WHERE reservation_id =  {request.form['reservation_id']}
                """

        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()

        return redirect('/simple_user/reservations')

    return render_template('user_reservations.html', reservations = reservations, msg = msg)

@app.route('/simple_user/change_password', methods=['GET','POST'])
def change_password_su():

    user_id = session['id']
    msg = ""

    if 'submit' in request.form:

        password = request.form.get('password')
        if password:
            query = f"""
                    UPDATE users
                    SET password = '{password}'
                    WHERE user_id =  {user_id}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

            msg = "O Κωδικός σας άλλαξε επιτυχώς!"



    return render_template('change_password_simple_user.html', msg = msg)

@app.route('/simple_user/write_review', methods=['GET', 'POST'])
def write_review():

    user_id = session['id']

    msg = ""
    isbn = session['isbn']


    if 'submit' in request.form:


        cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute(f"SELECT user_type FROM  simple_user WHERE user_id = {user_id}")
        user_type = cursor.fetchone()['user_type']
        cursor.close()

        if user_type =='student':
            approved = 'FALSE'
        
        else:
            approved = 'TRUE'

        likert = request.form.get('likert')
        review_text = request.form.get('review_text')

        query = f"""
                INSERT INTO review (isbn, user_id, likert, approved) VALUES ({isbn}, {user_id}, {likert}, {approved})
                """

        cursor = db.connection.cursor()
        cursor.execute(query)
        db.connection.commit()
        cursor.close()

        if review_text:

            query = f"""
                    UPDATE review
                    SET review_text = '{review_text}'
                    WHERE user_id =  {user_id} AND isbn = {isbn}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()
        
        msg = "Η αξιολόγησή σας καταχωρήθηκε επιτυχώς"

    return render_template('write_review.html', msg = msg, isbn = isbn) 

@app.route('/simple_user/reviews',methods = ['GET','POST'])
def all_reviews():

    query = """
            SELECT b.image_url, b.isbn, b.title, u.username, r.likert, r.review_text FROM review r
            INNER JOIN users u ON u.user_id = r.user_id
            INNER JOIN book b ON b.isbn = r.isbn
            WHERE approved = TRUE
            """

    cursor = db.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(query)
    reviews = cursor.fetchall()
    cursor.close()

    return render_template('user_reviews.html', reviews = reviews)

@app.route('/simple_user/change_data', methods=['GET','POST'])
def change_data_su():

    user_id = session['id']
    msg = ""

    if 'submit_name'  in request.form or 'submit_surname'  in request.form or 'submit_username'  in request.form or 'submit_email'  in request.form or 'submit_birthdate'  in request.form:

        flag = False

        name = request.form.get('name')
        surname = request.form.get('surname')
        username = request.form.get('username')
        email = request.form.get('email')
        birthdate = request.form.get('birthdate')

        if name:

            flag = True
            query = f"""
                    UPDATE simple_user
                    SET name = '{name}'
                    WHERE user_id =  {user_id}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

        if surname:

            flag = True
            query = f"""
                    UPDATE simple_user
                    SET surname = '{surname}'
                    WHERE user_id =  {user_id}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

        if birthdate:

            flag = True
            query = f"""
                    UPDATE simple_user
                    SET name = '{birthdate}'
                    WHERE user_id =  {user_id}
                    """

            cursor = db.connection.cursor()
            cursor.execute(query)
            db.connection.commit()
            cursor.close()

        if username:

            cursor = db.connection.cursor()
            cursor.execute(f"SELECT * FROM users u WHERE u.username = '{ username }'")
            result = cursor.fetchall()
            cursor.close()
            if result:
                flag = False
                msg = "Το username υπάρχει ήδη"
            else:

                flag = True
                query = f"""
                        UPDATE users
                        SET username = '{username}'
                        WHERE user_id =  {user_id}
                        """

                cursor = db.connection.cursor()
                cursor.execute(query)
                db.connection.commit()
                cursor.close()

        if email:

            cursor = db.connection.cursor()
            cursor.execute(f"SELECT * FROM users u WHERE u.email = '{ email }'")
            result = cursor.fetchall()
            cursor.close()
            if result:
                flag = False
                msg = "Το email υπάρχει ήδη"
            
            else:
                
                flag = True
                query = f"""
                        UPDATE users
                        SET email = '{email}'
                        WHERE user_id =  {user_id}
                        """

                cursor = db.connection.cursor()
                cursor.execute(query)
                db.connection.commit()
                cursor.close()
        
        if flag:
            msg = "Τα στοιχεία σας ενημερώθηκας επιτυχώς επιτυχώς!"

    if 'return_page' in request.form:

        return redirect('/simple_user')

    return render_template('change_data_simple_user.html', msg = msg)

if __name__ == '__main__':
    app.run(debug = True)

