import random

integer_list = []

while len(integer_list) < 180:
    new_integer = random.randint(1000000000000, 9999999999999)
    if new_integer not in integer_list:
        integer_list.append(new_integer)


book_titles = [
    "Ο Άνθρωπος που Αναζητούσε την Αλήθεια",
    "Η Καλύβα του Ποντίκη",
    "Το Νησί των Πειρατών",
    "Ο Άνθρωπος που Μετρούσε τα Αστέρια",
    "Το Χαμένο Σύμβολο",
    "Η Κληρονομιά του Κόσμου",
    "Ο Αρχάριος",
    "Ο Τοίχος",
    "Το Τανγκό της Πεντάμορφης",
    "Ο Μεταμορφωμένος",
    "Η Μοναχική Εκδρομή",
    "Ο Αριθμός 23",
    "Η Μυστική Ιστορία",
    "Ο Επίτροπος",
    "Η Πύλη",
    "Η Πόλη των Καταραμένων",
    "Ο Μυστήριος Περίπατος",
    "Ο Απροσάρμοστος",
    "Ο Φτωχογεννημένος",
    "Το Αντικαταστατικό",
    "Ο Αποστάτης",
    "Ο Νονός",
    "Το Κυνήγι του Φαντάσματος",
    "Ο Τελευταίος Κυνηγός",
    "Το Κυνήγι της Αλήθειας",
    "Ο Πολιτικός",
    "Ο Αγνοούμενος",
    "Ο Κυνηγός της Νύχτας",
    "Ο Μελλοθάνατος",
    "Ο Τελευταίος Πολεμιστής",
    "Το Μυστικό των Μύθων",
    "Η Φωνή του Καλοκαιρινού Ανέμου",
    "Ο Φωτογράφος",
    "Ο Ληστής",
    "Το Φάντασμα του Παρελθόντος",
    "Ο Παράδεισος του Χειμώνα",
    "Η Σιωπή της Θάλασσας",
    "Η Παράνομη Αγάπη",
    "Ο Μονομάχος",
    "Ο Καταραμένος",
    "Η Χαμένη Πόλη",
    "Η Απαγορευμένη Γη",
    "Ο Ανίκητος",
    "Η Σιωπή της Εκδίκησης",
    "Ο Αγνωστος",
    "Ο Θρύλος του Δράκουλα",
    "Η Άριστη Παγίδα",
    "Ο Παράδεισος της Αδικίας",
    "Ο Μοναχικός Περίπατος",
    "Η Καταδίωξη",
    "Ο Συλλέκτης",
    "Η Παράνοια",
    "Ο Πανούργος",
    "Η Συμμορία",
    "Η Μυστική Ζωή των Παραθύρων",
    "Ο Φύλακας",
    "Η Επικίνδυνη Περιπέτεια",
    "Ο Αναρχικός",
    "Ο Συνωμότης",
    "Η Καταδίκη",
    "Ο Προδότης",
    "Η Αιχμαλωσία",
    "Ο Κυνηγός",
    "Η Προδοσία",
    "Ο Φωτισμένος",
    "Ο Εγκληματίας",
    "Η Εκδίκηση",
    "Ο Περιπλανώμενος",
    "Η Τελευταία Στιγμή",
    "Ο Συνωμοσιολόγος",
    "Ο Αντικαταστάτης",
    "Η Παγίδα",
    "Ο Πρωτοπόρος",
    "Ο Αδίστακτος",
    "Η Μυστική Πλευρά",
    "Ο Στρατηγός",
    "Η Εγκατάλειψη",
    "Ο Ανεπιθύμητος",
    "Η Πρόκληση",
    "Ο Προδότης της Ελευθερίας",
    "Η Μοναξιά",
    "Ο Αληθινός",
    "Ο Τελευταίος Εξόριστος",
    "Η Υπόσχεση",
    "Ο Ανεξάρτητος",
    "Η Συγγραφέας",
    "Ο Επαναστάτης",
    "Η Συνάντηση",
    "Ο Προδότης του Κράτους",
    "Η Επιβίωση",
    "Ο Φωτογράφος των Αναμνήσεων",
    "Ο Χαμένος",
    "Η Πτώση του Βασιλιά",
    "Ο Εξαφανισμένος",
    "Ο Αποπλανητής",
    "Η Απόδραση",
    "Ο Σκοτεινός Αρχοντας",
    "Η Αλληγορία",
    "Ο Πολέμιος",
    "Ο Φύλακας του Χρόνου",
    "Η Τελευταία Ανατροπή",
    "Ο Απρόβλεπτος",
    "Η Αναμνηστική Κληρονομιά",
    "Ο Συνωμότης της Σκιάς",
    "Η Αναζήτηση",
    "Ο Κυνηγός της Αυγής",
    "Ο Παραμυθάς",
    "Η Κυρία της Σκιάς",
    "Ο Ακούραστος",
    "Η Απαγωγή",
    "Ο Προσκυνητής",
    "Η Επικίνδυνη Συνάντηση",
    "Ο Πειρατής",
    "Ο Συνωμότης της Νύχτας",
    "Η Αντίσταση",
    "Ο Καταζητούμενος",
    "Η Πρόκληση του Μυστήριου",
    "Ο Περιηγητής",
    "Ο Ταξιδιώτης",
    "Η Ανατροπή",
    "Ο Αιχμάλωτος",
    "Η Συνεργασία",
    "Ο Φλεγόμενος",
    "Η Ανεπίσημη Αλήθεια",
    "Ο Παρατηρητής",
    "Ο Απεγνωσμένος",
    "Η Κατασκοπεία",
    "Ο Εγκληματολόγος",
    "Η Παγίδα του Χρόνου",
    "Ο Συνεργάτης",
    "Ο Χρονοταξιδιώτης",
    "Η Απαγωγή της Ελευθερίας",
    "Ο Ανεπιθύμητος Πρόξενος",
    "Η Καταραμένη Κληρονομιά",
    "Ο Προδότης της Δημοκρατίας",
    "Η Αλήθεια των Σκιών",
    "Ο Απροσάρμοστος Πρωτοπόρος",
    "Ο Χειρότερος Εχθρός",
    "Η Συνάντηση των Αποκλεισμένων",
    "Ο Ανακριτής",
    "Η Προδοσία του Ειρηνικού",
    "Ο Παγιδευμένος",
    "Ο Σκοτεινός Εκδικητής",
    "Η Επιβίωση της Μνήμης",
    "Ο Αναζητητής",
    "Ο Κυνηγός της Αλήθειας",
    "Η Επιστροφή του Πειρατή",
    "Ο Αποκαλυπτής",
    "Η Ανυπακοή",
    "Ο Αγώνας",
    "Ο Τελευταίος Προδότης",
    "Η Μυστική Κωδικοποίηση",
    "Ο Περίεργος",
    "Η Καταδίωξη του Εγώ",
    "Ο Σκοτεινός Ποιητής",
    "Η Αλήθεια του Μύθου",
    "Ο Εκκολαπτόμενος",
    "Ο Ανεξάρτητος Κυνηγός",
    "Η Ανεπιθύμητη Διαδρομή",
    "Ο Απρόβλεπτος Συνωμοσιολόγος",
    "Ο Πρόξενος",
    "Η Συνεργασία των Εχθρών",
    "Ο Περιθωριοποιημένος",
    "Η Αιχμάλωτη Ελευθερία",
    "Ο Πρωτοπόρος της Σκιάς",
    "Η Απόπειρα",
    "Ο Φονιάς",
    "Ο Επαναστάτης των Αισθήσεων",
    "Η Εξομολόγηση",
    "Ο Τρομοκράτης",
    "Η Κατάρα",
    "Ο Αποκλεισμένος",
    "Ο Κατακτητής",
    "Η Πρόσκληση",
    "Ο Φύλακας της Σκοτεινής Πύλης",
    "Η Απόδραση του Κρατουμένου",
    "Ο Μεταμορφωμένος Πράκτορας",
    "Η Κρυφή Απειλή",
    "Ο Προδότης του Παρελθόντος",
    "Η Απειλητική Ανεξαρτησία"
]

keywords = [
    'Ανταρσία',
    'Εξερεύνηση',
    'Αποκάλυψη',
    'Εξέγερση',
    'Αναζήτηση',
    'Εξαφάνιση',
    'Διπλωματικό',
    'Δικαστικό',
    'Ανείπωτο μυστικό',
    'Εξωγήινη ζωή',
    'Συνωμοσία',
    'Εθνική ταυτότητα',
    'Καταδίωξη',
    'Φυλακισμένος',
    'Ιατρικό',
    'Μυστική αποστολή',
    'Μαγεία',
    'Οικογενειακό δράμα',
    'Επιστημονική έρευνα',
    'Επικίνδυνος έρωτας',
    'Κατασκοπεία',
    'Αποστολή διάσωσης',
    'Απομόνωση',
    'Εκδίκηση',
    'Συνωμοσιολογία',
    'Ερωτικό τρίγωνο',
    'Απόδραση',
    'Επανάσταση',
    'Σχέσεις εξουσίας',
    'Κοινωνική κριτική',
    'Πολιτική',
    'Διασκορπισμένες μνήμες',
    'Επιζώντες',
    'Μεταφυσικό μυστήριο',
    'Κυνήγι θησαυρού',
    'Πολεμικό δράμα',
    'Επικίνδυνη αποστολή',
    'Αντίσταση',
    'Αναμέτρηση',
    'Καταδίκη',
    'Χαμένη αγάπη'
]

languages  = ["Ελληνικά", "Αγγλικά"]
publishers = ["Εκδόσεις Πατάκη", "Εκδόσεις Ψυχογιός", "Εκδόσεις Ίκαρος", "Εκδόσεις Μεταίχμιο"]


"""
for i in range(0,180):

    keyword1 = keywords[random.randint(0, 40)]
    keyword2 = keywords[random.randint(0, 40)]
    keyword_string = f"{keyword1}, {keyword2}"

    print("INSERT INTO book (isbn, title, pages, language, keywords, publisher)")
    print(f"VALUES({integer_list[i]}, '{book_titles[i]}', {random.randint(150, 400)}, '{languages[random.randint(0,1)]}', '{keyword_string}','{publishers[random.randint(0,3)]}');")
    print("\n")
"""

male_names = [
    "Ιωάννης",
    "Γεώργιος",
    "Νίκολαος",
    "Δημήτριος",
    "Παναγιώτης",
    "Κώνσταντίνος",
    "Ανδρέας",
    "Θεόδωρος",
    "Αντώνιος",
    "Αλέξανδρος",
    "Στέφανος",
    "Βασίλειος",
    "Μιχαηλ",
    "Πέτρος",
    "Χρήστος",
    "Σπύρίδων",
    "Παύλος",
    "Αθανάσιος",
    "Λουκάς",
    "Μάριος",
    "Νικήτας",
    "Θωμάς",
    "Ευάγγελος",
    "Χριστόφορος",
    "Αριστοτέλης",
    "Διονύσιος",
    "Μάρκος",
    "Γρηγόριος",
    "Αχιλλεύς",
    "Ανδρόνικος",
    "Σωκράτης",
    "Σωτήριος",
    "Απόστολος",
    "Σάββας",
    "Ορφεύς",
    "Νεκτάριος"
]



male_surnames = [
    "Παπαδόπουλος",
    "Δημητρίου",
    "Παπανικολάου",
    "Κωνσταντίνου",
    "Γεωργίου",
    "Ανδρέου",
    "Νικολάου",
    "Πατρίκιος",
    "Αθανασίου",
    "Χριστοφόρου",
    "Παπαγεωργίου",
    "Αντωνίου",
    "Αναστασίου",
    "Στυλιανού",
    "Δημούλης",
    "Βασιλείου",
    "Μιχαήλ",
    "Αλεξίου",
    "Παπαδάκης",
    "Ζαχαρίου",
    "Πέτρου",
    "Παναγιωτίδης",
    "Ανδρικόπουλος",
    "Σπυρίδωνος",
    "Παυλίδης",
    "Παπαϊωάννου",
    "Παπαμιχαήλ",
    "Λαμπρόπουλος",
    "Παπαστεφάνου",
    "Παπανδρέου",
    "Παπαναστασίου",
    "Χατζής",
    "Παπαμιχαήλ",
    "Γκίκας",
    "Βλάχος",
    "Παπαδάκης",
    "Καδιανάκης",
    "Κόνιαρης",
    "Τσουμάκος",
    "Κοζύρης"
]


female_names = [
    "Αναστασία",
    "Ελένη",
    "Αθηνά",
    "Σοφία",
    "Μαρία",
    "Ειρήνη",
    "Αικατερίνη",
    "Δήμητρα",
    "Αλεξάνδρα",
    "Γεωργία",
    "Αντιγόνη",
    "Αγγελική",
    "Παναγιώτα",
    "Βασιλική",
    "Δέσποινα",
    "Ευαγγελία",
    "Αγάπη",
    "Αλίκη",
    "Χριστίνα",
    "Ευτυχία",
    "Λουκία",
    "Μαργαρίτα",
    "Ιωάννα",
    "Παρασκευή",
    "Ελισάβετ",
    "Μελίνα",
    "Θεοδώρα",
    "Ροδούλα",
    "Σταυρούλα",
    "Ελένη",
    "Ανθούλα",
    "Ευσταθία",
    "Μυρσίνη",
    "Ναυσικά",
    "Δανάη"
]

female_surnames = [
    "Αναστασίου",
    "Παπαδοπούλου",
    "Γεωργίου",
    "Δημητρίου",
    "Καραγιάννη",
    "Παναγιωτοπούλου",
    "Κωνσταντινίδου",
    "Παππά",
    "Δαμασκηνού",
    "Αντωνίου",
    "Παπανικολάου",
    "Χριστοδούλου",
    "Πατσατζή",
    "Γεωργιάδου",
    "Μαρίνου",
    "Παυλίδου",
    "Αθανασίου",
    "Κοντογιάννη",
    "Αναστασιάδου",
    "Παπαϊωάννου",
    "Στεφανίδου",
    "Σταυρίδου",
    "Μαρκοπούλου",
    "Μαυροματάκη",
    "Κατσαρού",
    "Αγγελίδου",
    "Παπακωνσταντίνου",
    "Γεωργακοπούλου",
    "Καραμανλή",
    "Τσιτσιμπίκου",
    "Καραβαγγέλη",
    "Παπαναστασίου",
    "Χατζή",
    "Παπαμιχαήλ",
    "Γκίκα",
    "Βλάχου",
    "Παπαδάκη",
    "Καδιανάκη",
    "Κόνιαρη",
    "Τσουμάκου",
    "Κοζύρη"
]
"""

for i in range(1, 61):
    username = f"student{i}"
    email    = f"student{i}@example.com"
    print(f"INSERT INTO users (username, password, email) VALUES ('{username}', '12345678', '{email}');")
    print("SET  @last_user_id = LAST_INSERT_ID();")
    print("INSERT INTO simple_user (user_id, user_type, school_id, name, surname, birthdate)")
    print(f"VALUES(@last_user_id, 'student', {random.randint(1,6)}, '{male_names[random.randint(0,34)]}', '{male_surnames[random.randint(0,39)]}','{random.randint(2005,2007)}-0{random.randint(1,9)}-{random.randint(10,28)}' );")
    print("\n")

for i in range(61,121):
    username = f"student{i}"
    email    = f"student{i}@example.com"
    print(f"INSERT INTO users (username, password, email) VALUES ('{username}', '12345678', '{email}');")
    print("SET @last_user_id = LAST_INSERT_ID();")
    print("INSERT INTO simple_user (user_id, user_type, school_id, name, surname, birthdate)")
    print(f"VALUES(@last_user_id, 'student', {random.randint(1,6)}, '{female_names[random.randint(0,34)]}', '{female_surnames[random.randint(0,39)]}','{random.randint(2005,2007)}-0{random.randint(1,9)}-{random.randint(10,28)}' );")
    print("\n")
"""
"""
for i in range(1, 21):
    username = f"teacher{i}"
    email    = f"teacher{i}@example.com"
    print(f"INSERT INTO users (username, password, email) VALUES ('{username}', '12345678', '{email}');")
    print("SET @last_user_id = LAST_INSERT_ID();")
    print("INSERT INTO simple_user (user_id, user_type, school_id, name, surname, birthdate)")
    print(f"VALUES(@last_user_id, 'teacher', {random.randint(1,6)}, '{male_names[random.randint(0,34)]}', '{male_surnames[random.randint(0,39)]}','{random.randint(1960,1995)}-0{random.randint(1,9)}-{random.randint(10,28)}' );")
    print("\n")

for i in range(21, 41):
    username = f"teacher{i}"
    email    = f"teacher{i}@example.com"
    print(f"INSERT INTO users (username, password, email) VALUES ('{username}', '12345678', '{email}');")
    print("SET @last_user_id = LAST_INSERT_ID();")
    print("INSERT INTO simple_user (user_id, user_type, school_id, name, surname, birthdate)")
    print(f"VALUES(@last_user_id, 'teacher', {random.randint(1,6)}, '{female_names[random.randint(0,34)]}', '{female_surnames[random.randint(0,39)]}','{random.randint(1960,1995)}-0{random.randint(1,9)}-{random.randint(10,28)}' );")
    print("\n")
"""
"""
for i in range(1,7):
    random.shuffle(integer_list)
    for j in range(100):
        print(f"INSERT INTO library_book(copies, isbn, school_id) VALUES ({random.randint(1,3)}, {integer_list[j]}, {i});\n")


authors = [() for i in range(50)]

for i in range(25):

    authors[i] = (male_names[random.randint(0,34)], male_surnames[random.randint(0,39)])

    print(f"INSERT INTO author (name, surname) VALUES ('{authors[i][0]}', '{authors[i][1]}');\n")


for i in range(25, 50):

    authors[i] = (female_names[random.randint(0,34)], female_surnames[random.randint(0,39)])
    print(f"INSERT INTO author (name, surname) VALUES ('{authors[i][0]}', '{authors[i][1]}');\n")

"""
categories_list = [
    "Λογοτεχνία",
    "Ιστορία",
    "Διαχείριση χρόνου",
    "Μυθιστόρημα",
    "Δράμα",
    "Τρόμου",
    "Ποίηση",
    "Επιστημονική Φαντασία",
    "Βιογραφίες",
    "Αυτοβελτίωση",
    "Μαγειρική",
    "Τέχνες",
    "Φωτογραφία",
    "Ταξίδια",
    "Περιπέτεια",
    "Περιβάλλον",
    "Παιδικά",
    "Επιστήμη",
    "Οικονομία",
    "Πνευματική Ανάπτυξη"
]


"""
for i in range(20):
    print(f"INSERT INTO category (category_name) VALUES ('{categories_list[i]}');\n")


dummy50 = [i for i in range(50)]
for i in range(180):
    random.shuffle(dummy50)
    for j in range(random.randint(1,3)):
            print(f"INSERT INTO book_author (isbn, name, surname) VALUES ({integer_list[i]}, '{authors[dummy50[20+j]][0]}', '{authors[dummy50[20+j]][1]}');\n")



dummy20 = [i for i in range(20)]
for i in range(180):
    random.shuffle(dummy20)
    for j in range(random.randint(2,3)):
        print(f"INSERT INTO book_category(isbn, category_name) VALUES ({integer_list[i]}, '{categories_list[dummy20[j]]}');\n")

"""
import mysql.connector

# Configure MySQL connection
cnx = mysql.connector.connect(
    host='localhost',
    user='library_user',
    password='12345Aa@',
    database='school_library_system'
)
cursor = cnx.cursor()

# Create an empty dictionary to store the ISBNs for each school
school_books = {}

# Retrieve the school_id and name from the school table
cursor.execute("SELECT school_id, name FROM school")
schools = cursor.fetchall()

# Iterate over each school
for school_id, school_name in schools:
    # Retrieve the ISBNs of books for the current school
    query = "SELECT isbn FROM library_book WHERE school_id = %s"
    cursor.execute(query, (school_id,))  # Fix: Added an extra comma to create a single-element tuple
    isbns = cursor.fetchall()

    # Store the ISBNs in the dictionary
    school_books[int(school_id)] = [isbn for (isbn,) in isbns]


# Create an empty dictionary to store the simple users for each school
school_users = {}

# Retrieve the school_id and name from the school table
cursor.execute("SELECT school_id, name FROM school")
schools = cursor.fetchall()

# Iterate over each school
for school_id, school_name in schools:
    # Retrieve the simple users of the current school
    query = "SELECT user_id FROM simple_user WHERE school_id = %s"
    cursor.execute(query, (school_id,))
    user_ids = cursor.fetchall()

    # Store the simple users in the dictionary
    school_users[int(school_id)] = [user_id for (user_id,) in user_ids]

cnx.close()

borrows = {}
index = -1

"""
for i in range(1,7):
    for j in range(80):
        index = index + 1
        borrows[index] = [school_users[i][random.randint(1, len(school_users[i])-1)], school_books[i][random.randint(1, len(school_books[i])-1)]]
        print(f"INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES ({borrows[index][0]}, {i+1}, {borrows[index][1]},'2022-{random.randint(1,12)}-{random.randint(1,28)}' , TRUE);")
        print()
    print()

for i in range(1,7):
    for j in range(40):
        index = index + 1 
        borrows[index] = [school_users[i][random.randint(1, len(school_users[i])-1)], school_books[i][random.randint(1, len(school_books[i])-1)]]
        print(f"INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES ({borrows[index][0]}, {i+1}, {borrows[index][1]},'2023-0{random.randint(1,4)}-{random.randint(1,28)}' , TRUE);")
        print()
    print()

for i in range(1,7):
    for j in range(10):
        index = index + 1 
        borrows[index] = [school_users[i][random.randint(1, len(school_users[i])-1)], school_books[i][random.randint(1, len(school_books[i])-1)]]
        print(f"INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES ({borrows[index][0]}, {i+1}, {borrows[index][1]},'2023-05-{random.randint(1,31)}');")
        print()
    print()
"""

for i in range(1,7):
    for j in range(10):
        print(f"INSERT INTO reservation (user_id, isbn, reservation_date) VALUES ({school_users[i][random.randint(1, len(school_users[i])-1)]}, {school_books[i][random.randint(1, len(school_books[i])-1)]},'2023-06-05');")
        print()
    print()

"""
for i in range(200):
    print(f"INSERT INTO review(likert, isbn, user_id) VALUES({random.randint(1,5)}, {borrows[3*i][1]}, {borrows[3*i][0]});")
    print()
"""



