--3.1.1 Παρουσίαση λίστας με συνολικό αριθμό δανεισμών ανά σχολείο (Κριτήρια αναζήτησης: έτος, ημερολογιακός μήνας πχ Ιανουάριος).)
query = f"""SELECT s.name AS school_name, COUNT(*) AS borrow_count
            FROM borrow AS b
            INNER JOIN simple_user AS u ON b.user_id = u.user_id
            INNER JOIN school AS s ON u.school_id = s.school_id
            WHERE MONTH(borrow_date) = {month} AND YEAR(borrow_date) = {year}
            GROUP BY school_name;
        """
-- 3.1.2 Για δεδομένη κατηγορία βιβλίων (επιλέγει ο χρήστης), ποιοι συγγραφείς ανήκουν σε αυτήν και ποιοι εκπαιδευτικοί έχουν δανειστεί βιβλία αυτής της κατηγορίας το τελευταίο έτος;
query1 = f"""
        SELECT DISTINCT CONCAT(a.surname, ' ', a.name) AS author_name
        FROM category c
        INNER JOIN book_category bc ON c.category_name = bc.category_name
        INNER JOIN book b ON b.isbn = bc.isbn 
        INNER JOIN book_author a ON a.isbn = b.isbn
        WHERE c.category_name = '{request.form['category']}';
        """

query2 =f"""
        SELECT DISTINCT CONCAT(t.surname, ' ', t.name) AS teacher_name
        FROM category c
        INNER JOIN book_category bc ON c.category_name = bc.category_name
        INNER JOIN book b ON b.isbn = bc.isbn 
        INNER JOIN borrow bor ON bor.isbn = b.isbn
        INNER JOIN simple_user t ON t.user_id = bor.user_id
        WHERE c.category_name = '{request.form['category']}' AND bor.borrow_date <= '{my_date}' AND bor.borrow_date > '{old_date}' AND t.user_type = 'teacher';
        """
-- 3.1.3 Βρείτε τους νέους εκπαιδευτικούς (ηλικία < 40 ετών) που έχουν δανειστεί τα περισσότερα βιβλία και των αριθμό των βιβλίων.
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
-- 3.1.4.Βρείτε τους συγγραφείς των οποίων κανένα βιβλίο δεν έχει τύχει δανεισμού.
query = """
            SELECT DISTINCT a.* FROM author a
            WHERE NOT EXISTS(
            SELECT 1 FROM book_author ba
            INNER JOIN borrow br ON ba.isbn = br.isbn
            WHERE a.name = ba.name AND a.surname = ba.surname)
            """

-- 3.1.5.Ποιοι χειριστές έχουν δανείσει τον ίδιο αριθμό βιβλίων σε διάστημα ενός έτους με περισσότερους από 20 δανεισμούς;
query = """
            SELECT a.name, a.surname, s.name AS school_name, COUNT(*) AS borrow_count
            FROM school_admin a
            INNER JOIN school s ON s.school_id = a.school_id
            INNER JOIN borrow b ON b.admin_id = a.user_id
            WHERE b.borrow_date <= '{my_date}' AND b.borrow_date >= '{old_date}'
            GROUP BY a.name, a.surname, s.name HAVING COUNT(*) > 20 ORDER BY borrow_count DESC;
             """ 
--3.1.6.Πολλά βιβλία καλύπτουν περισσότερες από μια κατηγορίες. Ανάμεσα σε ζεύγη πεδίων (π.χ.ιστορία και ποίηση) που είναι κοινά στα βιβλία, βρείτε τα 3 κορυφαία (top-3) ζεύγη που εμφανίστηκαν σε δανεισμούς. 
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
-- 3.1.7.βρείτε όλους τους συγγραφείς που έχουν γράψει τουλάχιστον 5 βιβλία λιγότερα από τον συγγραφέα με τα περισσότερα βιβλία.
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
-- 3.2.1.Παρουσίαση όλων των βιβλίων κατά Τίτλο, Συγγραφέα (Κριτήρια αναζήτησης: τίτλος/κατηγορία/ συγγραφέας/ αντίτυπα).
query = f'''
            SELECT b.isbn, b.title, b.pages, b.language, b.keywords, b.summary, b.publisher, b.image_url, lb.copies
            FROM book b
            INNER JOIN library_book lb ON b.isbn = lb.isbn
            INNER JOIN school_admin sa ON lb.school_id = sa.school_id 
            INNER JOIN book_category bc ON bc.isbn = b.isbn
            INNER JOIN book_author ba ON ba.isbn = b.isbn
            WHERE sa.user_id = {user_id} AND bc.category_name = '{ category }'
            AND ba.name = '{ author_name }' AND ba.surname = '{ author_surname }'
            AND b.title = '{title}'
            ORDER BY lb.copies {ASC or DESC}
            '''
-- 3.2.2.Εύρεση όλων των δανειζόμενων που έχουν στην κατοχή τους τουλάχιστον ένα βιβλίο και έχουν καθυστερήσει την επιστροφή του. (Κριτήρια αναζήτησης: Όνομα, Επώνυμο, Ημέρες Καθυστέρησης).
query = f"""
            SELECT s.name, s.surname, u.username, b.borrow_date, DATEDIFF(CURRENT_DATE, b.borrow_date) - 7 AS days_late
            FROM school_admin a 
            INNER JOIN simple_user s ON s.school_id = a.school_id
            INNER JOIN borrow b ON b.user_id = s.user_id
            INNER JOIN users u ON s.user_id = u.user_id
            WHERE a.user_id = {user_id} AND b.returned = FALSE AND DATEDIFF(CURRENT_DATE, b.borrow_date) > 7 
            AND s.name = '{ name }' AND s.surname = '{surname}'
            ORDER BY days_late {ASC or DESC} 
            """

-- 3.2.3.Μέσος Όρος Αξιολογήσεων ανά δανειζόμενο και κατηγορία (Κριτήρια αναζήτησης: χρήστης/ κατηγορία) 
query1 = f"""
            SELECT DISTINCT bc.category_name, AVG(rev.likert) AS avg_score FROM review rev
            INNER  JOIN simple_user su ON su.user_id = rev.user_id
            INNER  JOIN school_admin sa ON sa.school_id = su.school_id
            INNER  JOIN book b ON b.isbn = rev.isbn
            INNER  JOIN book_category bc ON bc.isbn = b.isbn
            WHERE  sa.user_id = {user_id} AND bc.category_name = '{ category }'
            GROUP BY bc.category_name;
            """

query2 = f"""
              SELECT AVG(rev.likert) AS avg_score, u.username FROM review rev
              INNER JOIN  simple_user su ON su.user_id = rev.user_id
              INNER JOIN users u ON u.user_id = su.user_id
              INNER JOIN school_admin sa ON sa.school_id = su.school_id
              WHERE sa.user_id = {user_id} AND u.username = '{ username }'
              GROUP BY u.username;
             """
--3.3.1.Όλα τα βιβλία που έχουν καταχωριστεί (Κριτήρια αναζήτησης: τίτλος/ κατηγορία/ συγγραφέας), δυνατότητα επιλογής βιβλίου και δημιουργία αιτήματος κράτησης.
query1 = f'''
            SELECT b.isbn, b.title, b.pages, b.language, b.keywords, b.summary, b.publisher, b.image_url
            FROM book b
            INNER JOIN library_book lb ON b.isbn = lb.isbn
            INNER JOIN simple_user su ON lb.school_id = su.school_id 
            INNER JOIN book_category bc ON bc.isbn = b.isbn
            INNER JOIN book_author ba ON ba.isbn = b.isbn
            WHERE su.user_id = {user_id} AND bc.category_name = '{ category }'
            AND ba.name = '{ author_name }' AND ba.surname = '{ author_surname }' AND b.title = '{title}'
            '''
query2 = f"INSERT INTO reservation (user_id, isbn, reservation_date) VALUES ('{ user_id }', '{ isbn }', CURRENT_DATE());"



--3.3.2.Λίστα όλων των βιβλίων που έχει δανειστεί ο συγκεκριμένος χρήστης.
query = f'''
    SELECT b.isbn, b.title, b.language, b.publisher, b.image_url, bor.borrow_date
    FROM book b
    INNER JOIN borrow bor ON b.isbn = bor.isbn
    INNER JOIN simple_user su ON bor.user_id = su.user_id
    WHERE su.user_id = {user_id};
    '''