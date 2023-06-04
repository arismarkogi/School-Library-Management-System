/*-------------------------------------- Admin insert-------------------------------------------------*/

INSERT INTO users (username, password, email) VALUES ('panbalt', 'password123', 'panbalt@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO sysadmin (user_id, name, surname) VALUES (@last_user_id, 'Παναγιώτης', 'Μπαλτάκος');

/*------------------------------------- Schools and School Admins Insert-------------------------------*/

INSERT INTO school (name, principal_name, city, phone_number, email, address)
VALUES ('1o ΓΕΛ Πειραιά', 'Ευάγγελος Μαρινάκης', 'Πειραιάς', 2100000001, 'gel1peiraias@example.com', 'Κηφησίας 1');
SET @last_school_id = LAST_INSERT_ID();
INSERT INTO users (username, password, email) VALUES ('kostaskarapapas', 'password123', 'kostaskarapapas@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO school_admin (user_id, name, surname, school_id, active) VALUES (@last_user_id, 'Κωνσταντίνος', 'Καραπαπάς', @last_school_id, TRUE);
UPDATE school
SET school_admin_id = @last_user_id WHERE school_id = @last_school_id;


INSERT INTO school (name, principal_name, city, phone_number, email, address)
VALUES ('2o ΓΕΛ Αθηνών', 'Ιωάννης Αλαφούζος', 'Αθήνα', 2100000002, 'gel2athens@example.com', 'Κηφησίας 2');
SET @last_school_id = LAST_INSERT_ID();
INSERT INTO users (username, password, email) VALUES ('spyrosvlachos', 'password123', 'spyrosvlachos@example.com');
SET @last_user_id = LAST_INSERT_ID() ;
INSERT INTO school_admin (user_id, name, surname, school_id, active) VALUES (@last_user_id, 'Σπυρίδων', 'Βλάχος', @last_school_id, TRUE);
UPDATE school
SET school_admin_id = @last_user_id WHERE school_id = @last_school_id;


INSERT INTO school (name, principal_name, city, phone_number, email, address)
VALUES ('3o ΓΕΛ Νεας Φιλαδέλφειας', 'Δημήτριος Μελισσανίδης', 'Νέα Φιλαδέλφεια', 2100000003, 'gel3neafiladelfia@example.com', 'Κηφησίας 3');
SET @last_school_id = LAST_INSERT_ID();
INSERT INTO users (username, password, email) VALUES ('johnpapadop', 'password123', 'johnpapadop@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO school_admin (user_id, name, surname, school_id, active) VALUES (@last_user_id, 'Ιωάννης', 'Παπαδόπουλος', @last_school_id, TRUE);
UPDATE school
SET school_admin_id = @last_user_id WHERE school_id = @last_school_id;


INSERT INTO school (name, principal_name, city, phone_number, email, address)
VALUES ('4o ΓΕΛ Θεσσαλονίκης', 'Ιβάν Σαββίδης', 'Θεσσαλονίκης', 2100000004, 'gel4thessaloniki@example.com', 'Κηφησίας 4');
SET @last_school_id = LAST_INSERT_ID();
INSERT INTO users (username, password, email) VALUES ('georgesavvidis', 'password123', 'georgesavvidis@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO school_admin (user_id, name, surname, school_id, active) VALUES (@last_user_id, 'Γεώργιος', 'Σαββίδης', @last_school_id, TRUE);
UPDATE school
SET school_admin_id = @last_user_id WHERE school_id = @last_school_id;


INSERT INTO school (name, principal_name, city, phone_number, email, address)
VALUES ('5o ΓΕΛ Θεσσαλονίκης', 'Θεόδωρος Καρυπίδης', 'Θεσσαλονίκη', 2100000005, 'gel5thessaloniki@example.com', 'Κηφησίας 5');
SET @last_school_id = LAST_INSERT_ID();
INSERT INTO users (username, password, email) VALUES ('fotiskechagias', 'password123', 'fotiskechagias@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO school_admin (user_id, name, surname, school_id, active) VALUES (@last_user_id, 'Φώτιος', 'Κεχαγιάς', @last_school_id, TRUE);
UPDATE school
SET school_admin_id = @last_user_id WHERE school_id = @last_school_id;


INSERT INTO school (name, principal_name, city, phone_number, email, address)
VALUES ('6o ΓΕΛ Μονακό', 'Αχιλλεύς Μπέος', 'Βόλος', 2100000006, 'gel6monaco@example.com', 'Κηφησίας 6');
SET @last_school_id = LAST_INSERT_ID();
INSERT INTO users (username, password, email) VALUES ('alexkougias', 'password123', 'alexkougias@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO school_admin (user_id, name, surname, school_id, active) VALUES (@last_user_id, 'Αλέξιος', 'Κούγιας', @last_school_id, TRUE);
UPDATE school
SET school_admin_id = @last_user_id WHERE school_id = @last_school_id;

/*-------------------------------------------------------Student Inserts------------------------------------------------*/

INSERT INTO users (username, password, email) VALUES ('student1', '12345678', 'student1@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Σωτήριος', 'Βασιλείου','2005-05-21' );


INSERT INTO users (username, password, email) VALUES ('student2', '12345678', 'student2@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Στέφανος', 'Κωνσταντίνου','2006-04-12' );


INSERT INTO users (username, password, email) VALUES ('student3', '12345678', 'student3@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Αθανάσιος', 'Αλεξίου','2006-03-10' );


INSERT INTO users (username, password, email) VALUES ('student4', '12345678', 'student4@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Σωτήριος', 'Στυλιανού','2006-03-15' );


INSERT INTO users (username, password, email) VALUES ('student5', '12345678', 'student5@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Διονύσιος', 'Παπαδάκης','2005-06-18' );


INSERT INTO users (username, password, email) VALUES ('student6', '12345678', 'student6@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Αντώνιος', 'Γεωργίου','2006-07-24' );


INSERT INTO users (username, password, email) VALUES ('student7', '12345678', 'student7@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Γρηγόριος', 'Αλεξίου','2005-02-27' );


INSERT INTO users (username, password, email) VALUES ('student8', '12345678', 'student8@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Διονύσιος', 'Παπαγεωργίου','2006-02-15' );


INSERT INTO users (username, password, email) VALUES ('student9', '12345678', 'student9@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Ιωάννης', 'Χατζής','2006-08-22' );


INSERT INTO users (username, password, email) VALUES ('student10', '12345678', 'student10@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Ιωάννης', 'Παπαδάκης','2006-01-14' );


INSERT INTO users (username, password, email) VALUES ('student11', '12345678', 'student11@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 1, 'Αθανάσιος', 'Παπαστεφάνου','2005-08-26' );


INSERT INTO users (username, password, email) VALUES ('student12', '12345678', 'student12@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Πέτρος', 'Πέτρου','2005-05-27' );


INSERT INTO users (username, password, email) VALUES ('student13', '12345678', 'student13@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Στέφανος', 'Γκίκας','2005-03-24' );


INSERT INTO users (username, password, email) VALUES ('student14', '12345678', 'student14@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Στέφανος', 'Παπαστεφάνου','2006-06-10' );


INSERT INTO users (username, password, email) VALUES ('student15', '12345678', 'student15@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Απόστολος', 'Αναστασίου','2006-03-11' );


INSERT INTO users (username, password, email) VALUES ('student16', '12345678', 'student16@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Νικήτας', 'Παπαϊωάννου','2005-01-10' );


INSERT INTO users (username, password, email) VALUES ('student17', '12345678', 'student17@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 1, 'Πέτρος', 'Νικολάου','2007-08-24' );


INSERT INTO users (username, password, email) VALUES ('student18', '12345678', 'student18@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Αχιλλεύς', 'Παπαϊωάννου','2007-07-25' );


INSERT INTO users (username, password, email) VALUES ('student19', '12345678', 'student19@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Κώνσταντίνος', 'Αλεξίου','2006-03-23' );


INSERT INTO users (username, password, email) VALUES ('student20', '12345678', 'student20@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Θωμάς', 'Λαμπρόπουλος','2007-08-28' );


INSERT INTO users (username, password, email) VALUES ('student21', '12345678', 'student21@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Θωμάς', 'Παπαδόπουλος','2005-03-23' );


INSERT INTO users (username, password, email) VALUES ('student22', '12345678', 'student22@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 1, 'Απόστολος', 'Παπαδόπουλος','2007-02-11' );


INSERT INTO users (username, password, email) VALUES ('student23', '12345678', 'student23@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Ευάγγελος', 'Παπαδάκης','2006-09-19' );


INSERT INTO users (username, password, email) VALUES ('student24', '12345678', 'student24@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Μάριος', 'Παπαγεωργίου','2006-06-28' );


INSERT INTO users (username, password, email) VALUES ('student25', '12345678', 'student25@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Πέτρος', 'Καδιανάκης','2006-07-27' );


INSERT INTO users (username, password, email) VALUES ('student26', '12345678', 'student26@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Σπύρίδων', 'Παπαδάκης','2007-04-15' );


INSERT INTO users (username, password, email) VALUES ('student27', '12345678', 'student27@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Νίκολαος', 'Παυλίδης','2005-05-28' );


INSERT INTO users (username, password, email) VALUES ('student28', '12345678', 'student28@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Πέτρος', 'Ανδρέου','2007-02-14' );


INSERT INTO users (username, password, email) VALUES ('student29', '12345678', 'student29@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Αντώνιος', 'Χριστοφόρου','2005-05-17' );


INSERT INTO users (username, password, email) VALUES ('student30', '12345678', 'student30@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Λουκάς', 'Στυλιανού','2006-03-19' );


INSERT INTO users (username, password, email) VALUES ('student31', '12345678', 'student31@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Χρήστος', 'Δημητρίου','2007-04-22' );


INSERT INTO users (username, password, email) VALUES ('student32', '12345678', 'student32@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Ευάγγελος', 'Παπανικολάου','2005-04-21' );


INSERT INTO users (username, password, email) VALUES ('student33', '12345678', 'student33@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Αχιλλεύς', 'Κωνσταντίνου','2006-04-26' );


INSERT INTO users (username, password, email) VALUES ('student34', '12345678', 'student34@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Μάριος', 'Παναγιωτίδης','2007-04-19' );


INSERT INTO users (username, password, email) VALUES ('student35', '12345678', 'student35@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Νικήτας', 'Λαμπρόπουλος','2005-08-26' );


INSERT INTO users (username, password, email) VALUES ('student36', '12345678', 'student36@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Αχιλλεύς', 'Παπαμιχαήλ','2007-02-12' );


INSERT INTO users (username, password, email) VALUES ('student37', '12345678', 'student37@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Χρήστος', 'Αθανασίου','2005-01-13' );


INSERT INTO users (username, password, email) VALUES ('student38', '12345678', 'student38@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Μάρκος', 'Καδιανάκης','2005-09-15' );


INSERT INTO users (username, password, email) VALUES ('student39', '12345678', 'student39@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Ευάγγελος', 'Τσουμάκος','2006-04-20' );


INSERT INTO users (username, password, email) VALUES ('student40', '12345678', 'student40@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Θωμάς', 'Κωνσταντίνου','2005-07-18' );


INSERT INTO users (username, password, email) VALUES ('student41', '12345678', 'student41@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Σάββας', 'Παπαδόπουλος','2005-01-18' );


INSERT INTO users (username, password, email) VALUES ('student42', '12345678', 'student42@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Ιωάννης', 'Δημούλης','2007-06-19' );


INSERT INTO users (username, password, email) VALUES ('student43', '12345678', 'student43@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Στέφανος', 'Παπαγεωργίου','2007-06-25' );


INSERT INTO users (username, password, email) VALUES ('student44', '12345678', 'student44@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 1, 'Σπύρίδων', 'Αλεξίου','2006-05-25' );


INSERT INTO users (username, password, email) VALUES ('student45', '12345678', 'student45@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Θεόδωρος', 'Μιχαήλ','2007-03-27' );


INSERT INTO users (username, password, email) VALUES ('student46', '12345678', 'student46@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Ευάγγελος', 'Παυλίδης','2006-05-13' );


INSERT INTO users (username, password, email) VALUES ('student47', '12345678', 'student47@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Στέφανος', 'Γκίκας','2006-08-15' );


INSERT INTO users (username, password, email) VALUES ('student48', '12345678', 'student48@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Θεόδωρος', 'Τσουμάκος','2005-08-20' );


INSERT INTO users (username, password, email) VALUES ('student49', '12345678', 'student49@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Χρήστος', 'Χατζής','2005-01-18' );


INSERT INTO users (username, password, email) VALUES ('student50', '12345678', 'student50@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Σπύρίδων', 'Παπαμιχαήλ','2005-08-28' );


INSERT INTO users (username, password, email) VALUES ('student51', '12345678', 'student51@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Σάββας', 'Παπαδάκης','2006-03-23' );


INSERT INTO users (username, password, email) VALUES ('student52', '12345678', 'student52@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 1, 'Νικήτας', 'Γεωργίου','2005-02-28' );


INSERT INTO users (username, password, email) VALUES ('student53', '12345678', 'student53@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Διονύσιος', 'Βλάχος','2006-06-15' );


INSERT INTO users (username, password, email) VALUES ('student54', '12345678', 'student54@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Δημήτριος', 'Μιχαήλ','2005-09-26' );


INSERT INTO users (username, password, email) VALUES ('student55', '12345678', 'student55@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Αντώνιος', 'Βασιλείου','2007-06-10' );


INSERT INTO users (username, password, email) VALUES ('student56', '12345678', 'student56@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Νίκολαος', 'Παπανικολάου','2007-01-26' );


INSERT INTO users (username, password, email) VALUES ('student57', '12345678', 'student57@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Ευάγγελος', 'Καδιανάκης','2005-03-27' );


INSERT INTO users (username, password, email) VALUES ('student58', '12345678', 'student58@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Ορφεύς', 'Κωνσταντίνου','2006-06-26' );


INSERT INTO users (username, password, email) VALUES ('student59', '12345678', 'student59@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Ιωάννης', 'Αθανασίου','2007-09-28' );


INSERT INTO users (username, password, email) VALUES ('student60', '12345678', 'student60@example.com');
SET  @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Σωτήριος', 'Παπαϊωάννου','2005-03-15' );


INSERT INTO users (username, password, email) VALUES ('student61', '12345678', 'student61@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 1, 'Ειρήνη', 'Αθανασίου','2005-01-12' );


INSERT INTO users (username, password, email) VALUES ('student62', '12345678', 'student62@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Λουκία', 'Τσιτσιμπίκου','2005-04-14' );


INSERT INTO users (username, password, email) VALUES ('student63', '12345678', 'student63@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Ειρήνη', 'Αγγελίδου','2005-01-24' );


INSERT INTO users (username, password, email) VALUES ('student64', '12345678', 'student64@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Ροδούλα', 'Χριστοδούλου','2005-08-18' );


INSERT INTO users (username, password, email) VALUES ('student65', '12345678', 'student65@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Μαρία', 'Κατσαρού','2006-05-14' );


INSERT INTO users (username, password, email) VALUES ('student66', '12345678', 'student66@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Αναστασία', 'Πατσατζή','2006-02-26' );


INSERT INTO users (username, password, email) VALUES ('student67', '12345678', 'student67@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Αικατερίνη', 'Μαρκοπούλου','2006-05-10' );


INSERT INTO users (username, password, email) VALUES ('student68', '12345678', 'student68@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Ελένη', 'Καραμανλή','2005-09-28' );


INSERT INTO users (username, password, email) VALUES ('student69', '12345678', 'student69@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Αναστασία', 'Κοντογιάννη','2005-06-17' );


INSERT INTO users (username, password, email) VALUES ('student70', '12345678', 'student70@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Αγάπη', 'Μαρκοπούλου','2006-01-26' );


INSERT INTO users (username, password, email) VALUES ('student71', '12345678', 'student71@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Ευαγγελία', 'Γεωργιάδου','2006-07-25' );


INSERT INTO users (username, password, email) VALUES ('student72', '12345678', 'student72@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Ελένη', 'Κόνιαρη','2005-03-12' );


INSERT INTO users (username, password, email) VALUES ('student73', '12345678', 'student73@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Γεωργία', 'Μαρίνου','2006-03-14' );


INSERT INTO users (username, password, email) VALUES ('student74', '12345678', 'student74@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Ανθούλα', 'Σταυρίδου','2006-02-13' );


INSERT INTO users (username, password, email) VALUES ('student75', '12345678', 'student75@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Βασιλική', 'Παπαμιχαήλ','2007-09-23' );


INSERT INTO users (username, password, email) VALUES ('student76', '12345678', 'student76@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Σοφία', 'Παπαδάκη','2006-06-21' );


INSERT INTO users (username, password, email) VALUES ('student77', '12345678', 'student77@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Ειρήνη', 'Κωνσταντινίδου','2005-08-23' );


INSERT INTO users (username, password, email) VALUES ('student78', '12345678', 'student78@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Ελένη', 'Μαρκοπούλου','2005-07-24' );


INSERT INTO users (username, password, email) VALUES ('student79', '12345678', 'student79@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Ευαγγελία', 'Καραγιάννη','2005-06-28' );


INSERT INTO users (username, password, email) VALUES ('student80', '12345678', 'student80@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Βασιλική', 'Αθανασίου','2006-02-24' );


INSERT INTO users (username, password, email) VALUES ('student81', '12345678', 'student81@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Αλεξάνδρα', 'Γεωργίου','2005-06-10' );


INSERT INTO users (username, password, email) VALUES ('student82', '12345678', 'student82@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 1, 'Θεοδώρα', 'Μαυροματάκη','2007-01-10' );


INSERT INTO users (username, password, email) VALUES ('student83', '12345678', 'student83@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Θεοδώρα', 'Γεωργακοπούλου','2006-08-17' );


INSERT INTO users (username, password, email) VALUES ('student84', '12345678', 'student84@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 1, 'Σοφία', 'Γεωργακοπούλου','2005-01-24' );


INSERT INTO users (username, password, email) VALUES ('student85', '12345678', 'student85@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Ευτυχία', 'Κοντογιάννη','2005-03-11' );


INSERT INTO users (username, password, email) VALUES ('student86', '12345678', 'student86@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Ελένη', 'Καδιανάκη','2005-06-18' );


INSERT INTO users (username, password, email) VALUES ('student87', '12345678', 'student87@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Ελένη', 'Παπαναστασίου','2006-08-18' );


INSERT INTO users (username, password, email) VALUES ('student88', '12345678', 'student88@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Δήμητρα', 'Βλάχου','2005-03-24' );


INSERT INTO users (username, password, email) VALUES ('student89', '12345678', 'student89@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Παναγιώτα', 'Καραγιάννη','2005-01-11' );


INSERT INTO users (username, password, email) VALUES ('student90', '12345678', 'student90@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Μελίνα', 'Παπαδοπούλου','2006-01-16' );


INSERT INTO users (username, password, email) VALUES ('student91', '12345678', 'student91@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Θεοδώρα', 'Γκίκα','2005-03-26' );


INSERT INTO users (username, password, email) VALUES ('student92', '12345678', 'student92@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Παρασκευή', 'Κωνσταντινίδου','2005-06-21' );


INSERT INTO users (username, password, email) VALUES ('student93', '12345678', 'student93@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Μυρσίνη', 'Δημητρίου','2005-05-18' );


INSERT INTO users (username, password, email) VALUES ('student94', '12345678', 'student94@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 1, 'Παρασκευή', 'Χατζή','2005-09-16' );


INSERT INTO users (username, password, email) VALUES ('student95', '12345678', 'student95@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Σταυρούλα', 'Παπανικολάου','2006-06-22' );


INSERT INTO users (username, password, email) VALUES ('student96', '12345678', 'student96@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Μαρία', 'Καραβαγγέλη','2007-05-11' );


INSERT INTO users (username, password, email) VALUES ('student97', '12345678', 'student97@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Βασιλική', 'Τσιτσιμπίκου','2007-02-27' );


INSERT INTO users (username, password, email) VALUES ('student98', '12345678', 'student98@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Ελισάβετ', 'Αναστασιάδου','2007-05-23' );


INSERT INTO users (username, password, email) VALUES ('student99', '12345678', 'student99@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Ιωάννα', 'Παπαδοπούλου','2007-02-19' );


INSERT INTO users (username, password, email) VALUES ('student100', '12345678', 'student100@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Αντιγόνη', 'Βλάχου','2006-06-27' );


INSERT INTO users (username, password, email) VALUES ('student101', '12345678', 'student101@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Ελένη', 'Μαυροματάκη','2006-07-14' );


INSERT INTO users (username, password, email) VALUES ('student102', '12345678', 'student102@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Γεωργία', 'Στεφανίδου','2007-02-25' );


INSERT INTO users (username, password, email) VALUES ('student103', '12345678', 'student103@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Ειρήνη', 'Γεωργακοπούλου','2005-08-24' );


INSERT INTO users (username, password, email) VALUES ('student104', '12345678', 'student104@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Σοφία', 'Παπαναστασίου','2007-08-23' );


INSERT INTO users (username, password, email) VALUES ('student105', '12345678', 'student105@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Ελένη', 'Δημητρίου','2007-04-15' );


INSERT INTO users (username, password, email) VALUES ('student106', '12345678', 'student106@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Μελίνα', 'Μαυροματάκη','2005-01-28' );


INSERT INTO users (username, password, email) VALUES ('student107', '12345678', 'student107@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Μυρσίνη', 'Μαρίνου','2006-06-11' );


INSERT INTO users (username, password, email) VALUES ('student108', '12345678', 'student108@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 1, 'Ιωάννα', 'Καραγιάννη','2005-09-22' );


INSERT INTO users (username, password, email) VALUES ('student109', '12345678', 'student109@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Μελίνα', 'Αγγελίδου','2006-09-28' );


INSERT INTO users (username, password, email) VALUES ('student110', '12345678', 'student110@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Αικατερίνη', 'Στεφανίδου','2006-09-20' );


INSERT INTO users (username, password, email) VALUES ('student111', '12345678', 'student111@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 1, 'Ευαγγελία', 'Παπαδοπούλου','2005-06-22' );


INSERT INTO users (username, password, email) VALUES ('student112', '12345678', 'student112@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Χριστίνα', 'Κόνιαρη','2006-04-18' );


INSERT INTO users (username, password, email) VALUES ('student113', '12345678', 'student113@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 5, 'Σοφία', 'Γεωργιάδου','2006-01-16' );


INSERT INTO users (username, password, email) VALUES ('student114', '12345678', 'student114@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Σοφία', 'Κατσαρού','2007-07-15' );


INSERT INTO users (username, password, email) VALUES ('student115', '12345678', 'student115@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Παρασκευή', 'Κατσαρού','2006-02-21' );


INSERT INTO users (username, password, email) VALUES ('student116', '12345678', 'student116@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 3, 'Αθηνά', 'Γεωργιάδου','2006-05-11' );


INSERT INTO users (username, password, email) VALUES ('student117', '12345678', 'student117@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 4, 'Ροδούλα', 'Παπαναστασίου','2005-03-10' );


INSERT INTO users (username, password, email) VALUES ('student118', '12345678', 'student118@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Γεωργία', 'Παπαδοπούλου','2006-06-22' );


INSERT INTO users (username, password, email) VALUES ('student119', '12345678', 'student119@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 6, 'Ευσταθία', 'Κόνιαρη','2006-02-11' );


INSERT INTO users (username, password, email) VALUES ('student120', '12345678', 'student120@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'student', 2, 'Μελίνα', 'Καδιανάκη','2007-02-26' );



/*-------------------------------------------------------Teacher Inserts------------------------------------------------*/

INSERT INTO users (username, password, email) VALUES ('teacher1', '12345678', 'teacher1@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 6, 'Αχιλλεύς', 'Νικολάου','1978-05-13' );


INSERT INTO users (username, password, email) VALUES ('teacher2', '12345678', 'teacher2@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 2, 'Αντώνιος', 'Αλεξίου','1960-02-11' );


INSERT INTO users (username, password, email) VALUES ('teacher3', '12345678', 'teacher3@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 4, 'Χρήστος', 'Παπαδάκης','1993-08-14' );


INSERT INTO users (username, password, email) VALUES ('teacher4', '12345678', 'teacher4@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 6, 'Διονύσιος', 'Κόνιαρης','1987-03-21' );


INSERT INTO users (username, password, email) VALUES ('teacher5', '12345678', 'teacher5@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 3, 'Ανδρέας', 'Παπαναστασίου','1990-07-22' );


INSERT INTO users (username, password, email) VALUES ('teacher6', '12345678', 'teacher6@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 3, 'Νικήτας', 'Αναστασίου','1963-08-11' );


INSERT INTO users (username, password, email) VALUES ('teacher7', '12345678', 'teacher7@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 5, 'Σπύρίδων', 'Βασιλείου','1972-06-25' );


INSERT INTO users (username, password, email) VALUES ('teacher8', '12345678', 'teacher8@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 1, 'Χριστόφορος', 'Παπανδρέου','1989-03-15' );


INSERT INTO users (username, password, email) VALUES ('teacher9', '12345678', 'teacher9@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 4, 'Αχιλλεύς', 'Κοζύρης','1974-05-22' );


INSERT INTO users (username, password, email) VALUES ('teacher10', '12345678', 'teacher10@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 3, 'Αχιλλεύς', 'Βασιλείου','1985-07-23' );


INSERT INTO users (username, password, email) VALUES ('teacher11', '12345678', 'teacher11@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 2, 'Χριστόφορος', 'Παυλίδης','1989-06-14' );


INSERT INTO users (username, password, email) VALUES ('teacher12', '12345678', 'teacher12@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 3, 'Μάρκος', 'Βασιλείου','1994-09-16' );


INSERT INTO users (username, password, email) VALUES ('teacher13', '12345678', 'teacher13@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 3, 'Γρηγόριος', 'Αντωνίου','1962-02-10' );


INSERT INTO users (username, password, email) VALUES ('teacher14', '12345678', 'teacher14@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 4, 'Σωκράτης', 'Μιχαήλ','1977-07-16' );


INSERT INTO users (username, password, email) VALUES ('teacher15', '12345678', 'teacher15@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 5, 'Απόστολος', 'Παπαδάκης','1970-01-27' );


INSERT INTO users (username, password, email) VALUES ('teacher16', '12345678', 'teacher16@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 6, 'Παναγιώτης', 'Ανδρέου','1966-08-14' );


INSERT INTO users (username, password, email) VALUES ('teacher17', '12345678', 'teacher17@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 3, 'Αριστοτέλης', 'Δημούλης','1970-02-11' );


INSERT INTO users (username, password, email) VALUES ('teacher18', '12345678', 'teacher18@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 2, 'Σπύρίδων', 'Ζαχαρίου','1978-06-21' );


INSERT INTO users (username, password, email) VALUES ('teacher19', '12345678', 'teacher19@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 6, 'Ανδρόνικος', 'Αναστασίου','1981-09-18' );


INSERT INTO users (username, password, email) VALUES ('teacher20', '12345678', 'teacher20@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 3, 'Μάρκος', 'Χριστοφόρου','1990-01-16' );


INSERT INTO users (username, password, email) VALUES ('teacher21', '12345678', 'teacher21@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 6, 'Δέσποινα', 'Αναστασίου','1976-08-15' );


INSERT INTO users (username, password, email) VALUES ('teacher22', '12345678', 'teacher22@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 4, 'Αλεξάνδρα', 'Παπαμιχαήλ','1973-05-12' );


INSERT INTO users (username, password, email) VALUES ('teacher23', '12345678', 'teacher23@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 1, 'Ανθούλα', 'Παπαναστασίου','1980-04-15' );


INSERT INTO users (username, password, email) VALUES ('teacher24', '12345678', 'teacher24@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 6, 'Λουκία', 'Καραμανλή','1967-04-22' );


INSERT INTO users (username, password, email) VALUES ('teacher25', '12345678', 'teacher25@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 4, 'Δανάη', 'Παναγιωτοπούλου','1989-06-21' );


INSERT INTO users (username, password, email) VALUES ('teacher26', '12345678', 'teacher26@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 1, 'Ροδούλα', 'Καραμανλή','1987-09-16' );


INSERT INTO users (username, password, email) VALUES ('teacher27', '12345678', 'teacher27@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 5, 'Ευτυχία', 'Καδιανάκη','1971-07-18' );


INSERT INTO users (username, password, email) VALUES ('teacher28', '12345678', 'teacher28@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 2, 'Αλίκη', 'Παπαδάκη','1966-02-18' );


INSERT INTO users (username, password, email) VALUES ('teacher29', '12345678', 'teacher29@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 4, 'Αγάπη', 'Μαρίνου','1975-06-10' );


INSERT INTO users (username, password, email) VALUES ('teacher30', '12345678', 'teacher30@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 4, 'Μυρσίνη', 'Βλάχου','1983-07-28' );


INSERT INTO users (username, password, email) VALUES ('teacher31', '12345678', 'teacher31@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 4, 'Χριστίνα', 'Παπανικολάου','1966-07-16' );


INSERT INTO users (username, password, email) VALUES ('teacher32', '12345678', 'teacher32@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 3, 'Ευσταθία', 'Μαυροματάκη','1983-07-16' );


INSERT INTO users (username, password, email) VALUES ('teacher33', '12345678', 'teacher33@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 6, 'Ναυσικά', 'Παναγιωτοπούλου','1971-04-10' );


INSERT INTO users (username, password, email) VALUES ('teacher34', '12345678', 'teacher34@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 3, 'Ναυσικά', 'Σταυρίδου','1970-02-25' );


INSERT INTO users (username, password, email) VALUES ('teacher35', '12345678', 'teacher35@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 2, 'Σοφία', 'Παπαναστασίου','1986-04-23' );


INSERT INTO users (username, password, email) VALUES ('teacher36', '12345678', 'teacher36@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 4, 'Χριστίνα', 'Τσιτσιμπίκου','1985-02-16' );


INSERT INTO users (username, password, email) VALUES ('teacher37', '12345678', 'teacher37@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 6, 'Αλίκη', 'Γεωργιάδου','1978-02-24' );


INSERT INTO users (username, password, email) VALUES ('teacher38', '12345678', 'teacher38@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 1, 'Αγγελική', 'Αναστασιάδου','1964-02-18' );


INSERT INTO users (username, password, email) VALUES ('teacher39', '12345678', 'teacher39@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 4, 'Αγγελική', 'Παπαϊωάννου','1964-03-13' );


INSERT INTO users (username, password, email) VALUES ('teacher40', '12345678', 'teacher40@example.com');
SET @last_user_id = LAST_INSERT_ID();
INSERT INTO simple_user (user_id, active, user_type, school_id, name, surname, birthdate)
VALUES(@last_user_id, TRUE, 'teacher', 4, 'Αθηνά', 'Καραμανλή','1995-07-17' );


/*------------------------------------------------ Book Inesrts --------------------------------------------------*/

INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3193969717953, 'Ο Άνθρωπος που Αναζητούσε την Αλήθεια', 269, 'Ελληνικά', 'Εξωγήινη ζωή, Επιστημονική έρευνα','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9811917595601, 'Η Καλύβα του Ποντίκη', 360, 'Ελληνικά', 'Επιζώντες, Κυνήγι θησαυρού','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1999175221635, 'Το Νησί των Πειρατών', 375, 'Ελληνικά', 'Εξερεύνηση, Καταδίκη','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4140951777695, 'Ο Άνθρωπος που Μετρούσε τα Αστέρια', 165, 'Αγγλικά', 'Εξερεύνηση, Κυνήγι θησαυρού','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3348697188116, 'Το Χαμένο Σύμβολο', 368, 'Ελληνικά', 'Ανταρσία, Εξέγερση','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1116606958982, 'Η Κληρονομιά του Κόσμου', 285, 'Ελληνικά', 'Ανείπωτο μυστικό, Επιζώντες','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9882758923892, 'Ο Αρχάριος', 288, 'Ελληνικά', 'Απόδραση, Καταδίωξη','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2433916935501, 'Ο Τοίχος', 226, 'Αγγλικά', 'Κυνήγι θησαυρού, Διπλωματικό','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8298667821950, 'Το Τανγκό της Πεντάμορφης', 330, 'Αγγλικά', 'Αναζήτηση, Κατασκοπεία','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9862578231662, 'Ο Μεταμορφωμένος', 228, 'Ελληνικά', 'Επικίνδυνος έρωτας, Αποστολή διάσωσης','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7158670919866, 'Η Μοναχική Εκδρομή', 306, 'Ελληνικά', 'Μυστική αποστολή, Εξέγερση','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1999173972484, 'Ο Αριθμός 23', 180, 'Ελληνικά', 'Αντίσταση, Εξαφάνιση','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2167684398452, 'Η Μυστική Ιστορία', 219, 'Ελληνικά', 'Απόδραση, Πολεμικό δράμα','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9224583734754, 'Ο Επίτροπος', 227, 'Αγγλικά', 'Απόδραση, Οικογενειακό δράμα','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4832966441647, 'Η Πύλη', 167, 'Αγγλικά', 'Ιατρικό, Εθνική ταυτότητα','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7755898641996, 'Η Πόλη των Καταραμένων', 229, 'Ελληνικά', 'Ανείπωτο μυστικό, Μυστική αποστολή','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7281413357185, 'Ο Μυστήριος Περίπατος', 203, 'Αγγλικά', 'Οικογενειακό δράμα, Αποκάλυψη','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4115250890401, 'Ο Απροσάρμοστος', 388, 'Αγγλικά', 'Χαμένη αγάπη, Αποστολή διάσωσης','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2984578966862, 'Ο Φτωχογεννημένος', 337, 'Αγγλικά', 'Αποκάλυψη, Συνωμοσιολογία','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1306445796635, 'Το Αντικαταστατικό', 372, 'Ελληνικά', 'Αποστολή διάσωσης, Επικίνδυνος έρωτας','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8910950787911, 'Ο Αποστάτης', 307, 'Ελληνικά', 'Συνωμοσιολογία, Εκδίκηση','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1488515868119, 'Ο Νονός', 327, 'Αγγλικά', 'Ανείπωτο μυστικό, Εξαφάνιση','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9567718119779, 'Το Κυνήγι του Φαντάσματος', 262, 'Αγγλικά', 'Συνωμοσία, Συνωμοσία','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(5456429866755, 'Ο Τελευταίος Κυνηγός', 311, 'Ελληνικά', 'Αποστολή διάσωσης, Εθνική ταυτότητα','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6604819383267, 'Το Κυνήγι της Αλήθειας', 275, 'Αγγλικά', 'Οικογενειακό δράμα, Επιστημονική έρευνα','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9028150382753, 'Ο Πολιτικός', 273, 'Αγγλικά', 'Φυλακισμένος, Απομόνωση','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6653159087817, 'Ο Αγνοούμενος', 174, 'Ελληνικά', 'Εξαφάνιση, Εκδίκηση','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2349417521177, 'Ο Κυνηγός της Νύχτας', 193, 'Ελληνικά', 'Μυστική αποστολή, Συνωμοσία','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2131928463530, 'Ο Μελλοθάνατος', 166, 'Αγγλικά', 'Απόδραση, Διασκορπισμένες μνήμες','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9737863198576, 'Ο Τελευταίος Πολεμιστής', 164, 'Ελληνικά', 'Διπλωματικό, Εξερεύνηση','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2364347149874, 'Το Μυστικό των Μύθων', 271, 'Ελληνικά', 'Αναζήτηση, Συνωμοσιολογία','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8264725327153, 'Η Φωνή του Καλοκαιρινού Ανέμου', 180, 'Αγγλικά', 'Απομόνωση, Απομόνωση','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9324118711655, 'Ο Φωτογράφος', 283, 'Ελληνικά', 'Μυστική αποστολή, Ανείπωτο μυστικό','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8341696933214, 'Ο Ληστής', 206, 'Ελληνικά', 'Αποστολή διάσωσης, Επικίνδυνη αποστολή','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1292103779027, 'Το Φάντασμα του Παρελθόντος', 291, 'Ελληνικά', 'Μαγεία, Μυστική αποστολή','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1810256525578, 'Ο Παράδεισος του Χειμώνα', 238, 'Αγγλικά', 'Διασκορπισμένες μνήμες, Μεταφυσικό μυστήριο','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8336473825612, 'Η Σιωπή της Θάλασσας', 378, 'Αγγλικά', 'Φυλακισμένος, Δικαστικό','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1889530462928, 'Η Παράνομη Αγάπη', 153, 'Ελληνικά', 'Εξέγερση, Αποκάλυψη','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2289945496584, 'Ο Μονομάχος', 168, 'Ελληνικά', 'Εθνική ταυτότητα, Καταδίωξη','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3243125056920, 'Ο Καταραμένος', 339, 'Ελληνικά', 'Καταδίωξη, Αναζήτηση','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9577651658527, 'Η Χαμένη Πόλη', 398, 'Αγγλικά', 'Εκδίκηση, Επιζώντες','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9574109824068, 'Η Απαγορευμένη Γη', 271, 'Ελληνικά', 'Κυνήγι θησαυρού, Μαγεία','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8982090089752, 'Ο Ανίκητος', 398, 'Αγγλικά', 'Εξαφάνιση, Ανείπωτο μυστικό','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8254238620165, 'Η Σιωπή της Εκδίκησης', 277, 'Αγγλικά', 'Ερωτικό τρίγωνο, Εκδίκηση','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8498752694348, 'Ο Αγνωστος', 290, 'Αγγλικά', 'Ανείπωτο μυστικό, Απόδραση','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6871703830013, 'Ο Θρύλος του Δράκουλα', 188, 'Ελληνικά', 'Εθνική ταυτότητα, Εξερεύνηση','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(5566444965150, 'Η Άριστη Παγίδα', 240, 'Ελληνικά', 'Απομόνωση, Επιστημονική έρευνα','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1841363972930, 'Ο Παράδεισος της Αδικίας', 181, 'Ελληνικά', 'Σχέσεις εξουσίας, Εξαφάνιση','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3756980224276, 'Ο Μοναχικός Περίπατος', 390, 'Αγγλικά', 'Εξερεύνηση, Επανάσταση','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4785138356950, 'Η Καταδίωξη', 286, 'Αγγλικά', 'Σχέσεις εξουσίας, Συνωμοσία','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1486540055135, 'Ο Συλλέκτης', 394, 'Αγγλικά', 'Συνωμοσιολογία, Ανείπωτο μυστικό','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1884752033664, 'Η Παράνοια', 329, 'Αγγλικά', 'Αναζήτηση, Ιατρικό','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6629370975730, 'Ο Πανούργος', 181, 'Ελληνικά', 'Καταδίκη, Εξωγήινη ζωή','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(5015118156484, 'Η Συμμορία', 390, 'Ελληνικά', 'Ανείπωτο μυστικό, Εξερεύνηση','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9406856102132, 'Η Μυστική Ζωή των Παραθύρων', 209, 'Ελληνικά', 'Επιζώντες, Επιζώντες','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3770947998401, 'Ο Φύλακας', 187, 'Αγγλικά', 'Φυλακισμένος, Ανείπωτο μυστικό','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9007144409202, 'Η Επικίνδυνη Περιπέτεια', 281, 'Ελληνικά', 'Εκδίκηση, Κοινωνική κριτική','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9491414035477, 'Ο Αναρχικός', 330, 'Ελληνικά', 'Επικίνδυνη αποστολή, Πολεμικό δράμα','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1126812354700, 'Ο Συνωμότης', 209, 'Αγγλικά', 'Διπλωματικό, Εξέγερση','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4869870691198, 'Η Καταδίκη', 169, 'Ελληνικά', 'Αναμέτρηση, Απομόνωση','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4946671575029, 'Ο Προδότης', 206, 'Αγγλικά', 'Διασκορπισμένες μνήμες, Ερωτικό τρίγωνο','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2114657248842, 'Η Αιχμαλωσία', 205, 'Ελληνικά', 'Κατασκοπεία, Αποστολή διάσωσης','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4770340963387, 'Ο Κυνηγός', 333, 'Ελληνικά', 'Κοινωνική κριτική, Επικίνδυνη αποστολή','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3925719614933, 'Η Προδοσία', 362, 'Αγγλικά', 'Εξαφάνιση, Κατασκοπεία','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3127865758618, 'Ο Φωτισμένος', 171, 'Αγγλικά', 'Κυνήγι θησαυρού, Απόδραση','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4751001788808, 'Ο Εγκληματίας', 302, 'Ελληνικά', 'Εθνική ταυτότητα, Κοινωνική κριτική','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9993567451113, 'Η Εκδίκηση', 217, 'Αγγλικά', 'Εξαφάνιση, Διασκορπισμένες μνήμες','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(5880267763753, 'Ο Περιπλανώμενος', 183, 'Ελληνικά', 'Αποκάλυψη, Αντίσταση','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3261285399325, 'Η Τελευταία Στιγμή', 167, 'Ελληνικά', 'Κυνήγι θησαυρού, Σχέσεις εξουσίας','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8697261847388, 'Ο Συνωμοσιολόγος', 369, 'Ελληνικά', 'Σχέσεις εξουσίας, Σχέσεις εξουσίας','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6153360567012, 'Ο Αντικαταστάτης', 394, 'Ελληνικά', 'Επανάσταση, Επανάσταση','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7811720330252, 'Η Παγίδα', 192, 'Αγγλικά', 'Ανταρσία, Επανάσταση','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4667412452750, 'Ο Πρωτοπόρος', 314, 'Ελληνικά', 'Απομόνωση, Σχέσεις εξουσίας','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6452966853203, 'Ο Αδίστακτος', 370, 'Αγγλικά', 'Ερωτικό τρίγωνο, Ανείπωτο μυστικό','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8521608397202, 'Η Μυστική Πλευρά', 372, 'Αγγλικά', 'Ανταρσία, Οικογενειακό δράμα','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3013463266893, 'Ο Στρατηγός', 224, 'Αγγλικά', 'Εξέγερση, Ανείπωτο μυστικό','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(5183409819690, 'Η Εγκατάλειψη', 275, 'Αγγλικά', 'Ανείπωτο μυστικό, Κοινωνική κριτική','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7016908686537, 'Ο Ανεπιθύμητος', 249, 'Αγγλικά', 'Δικαστικό, Διασκορπισμένες μνήμες','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3297437336773, 'Η Πρόκληση', 293, 'Ελληνικά', 'Κοινωνική κριτική, Πολεμικό δράμα','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2268167135439, 'Ο Προδότης της Ελευθερίας', 376, 'Ελληνικά', 'Ιατρικό, Εθνική ταυτότητα','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6688751513177, 'Η Μοναξιά', 173, 'Ελληνικά', 'Επιστημονική έρευνα, Εξερεύνηση','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3692740665327, 'Ο Αληθινός', 359, 'Ελληνικά', 'Διπλωματικό, Επιζώντες','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7567169927335, 'Ο Τελευταίος Εξόριστος', 338, 'Αγγλικά', 'Επικίνδυνη αποστολή, Αναμέτρηση','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1073629279588, 'Η Υπόσχεση', 287, 'Αγγλικά', 'Διπλωματικό, Κατασκοπεία','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8766336552641, 'Ο Ανεξάρτητος', 167, 'Ελληνικά', 'Φυλακισμένος, Καταδίωξη','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6632716926317, 'Η Συγγραφέας', 306, 'Αγγλικά', 'Χαμένη αγάπη, Αποστολή διάσωσης','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3079396977330, 'Ο Επαναστάτης', 319, 'Αγγλικά', 'Κατασκοπεία, Αποκάλυψη','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7605024846753, 'Η Συνάντηση', 318, 'Αγγλικά', 'Πολιτική, Εκδίκηση','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6682660543221, 'Ο Προδότης του Κράτους', 221, 'Ελληνικά', 'Εθνική ταυτότητα, Εξαφάνιση','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6456794880303, 'Η Επιβίωση', 399, 'Ελληνικά', 'Αποστολή διάσωσης, Χαμένη αγάπη','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3636299678055, 'Ο Φωτογράφος των Αναμνήσεων', 254, 'Αγγλικά', 'Μεταφυσικό μυστήριο, Επανάσταση','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4173279492495, 'Ο Χαμένος', 400, 'Ελληνικά', 'Απόδραση, Χαμένη αγάπη','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3618456023178, 'Η Πτώση του Βασιλιά', 317, 'Ελληνικά', 'Καταδίκη, Πολιτική','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1334143094508, 'Ο Εξαφανισμένος', 155, 'Ελληνικά', 'Σχέσεις εξουσίας, Αποκάλυψη','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4089950673159, 'Ο Αποπλανητής', 264, 'Ελληνικά', 'Επικίνδυνος έρωτας, Εκδίκηση','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1297436011637, 'Η Απόδραση', 212, 'Ελληνικά', 'Εκδίκηση, Εθνική ταυτότητα','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2012096842470, 'Ο Σκοτεινός Αρχοντας', 195, 'Ελληνικά', 'Επιζώντες, Επιζώντες','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1212148607497, 'Η Αλληγορία', 326, 'Ελληνικά', 'Επιστημονική έρευνα, Απομόνωση','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9219034632769, 'Ο Πολέμιος', 398, 'Αγγλικά', 'Δικαστικό, Συνωμοσιολογία','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2594664167353, 'Ο Φύλακας του Χρόνου', 214, 'Αγγλικά', 'Μυστική αποστολή, Μεταφυσικό μυστήριο','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1430937623633, 'Η Τελευταία Ανατροπή', 215, 'Ελληνικά', 'Αποστολή διάσωσης, Σχέσεις εξουσίας','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(5494724089011, 'Ο Απρόβλεπτος', 254, 'Ελληνικά', 'Καταδίκη, Κυνήγι θησαυρού','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4929859987550, 'Η Αναμνηστική Κληρονομιά', 367, 'Αγγλικά', 'Διασκορπισμένες μνήμες, Δικαστικό','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2972451307144, 'Ο Συνωμότης της Σκιάς', 267, 'Ελληνικά', 'Κοινωνική κριτική, Διασκορπισμένες μνήμες','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8418630659564, 'Η Αναζήτηση', 309, 'Ελληνικά', 'Εξαφάνιση, Φυλακισμένος','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3578107963372, 'Ο Κυνηγός της Αυγής', 204, 'Αγγλικά', 'Αποστολή διάσωσης, Απομόνωση','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2903278609230, 'Ο Παραμυθάς', 196, 'Αγγλικά', 'Απόδραση, Ανταρσία','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(5508185951725, 'Η Κυρία της Σκιάς', 211, 'Ελληνικά', 'Εξέγερση, Εξερεύνηση','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6931627909053, 'Ο Ακούραστος', 178, 'Ελληνικά', 'Επικίνδυνη αποστολή, Κυνήγι θησαυρού','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4505048373798, 'Η Απαγωγή', 265, 'Αγγλικά', 'Αποστολή διάσωσης, Αναζήτηση','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4606566578861, 'Ο Προσκυνητής', 285, 'Ελληνικά', 'Εξωγήινη ζωή, Ερωτικό τρίγωνο','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1074560664703, 'Η Επικίνδυνη Συνάντηση', 237, 'Αγγλικά', 'Επιζώντες, Απομόνωση','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6723873435411, 'Ο Πειρατής', 305, 'Ελληνικά', 'Κατασκοπεία, Πολιτική','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4152806489920, 'Ο Συνωμότης της Νύχτας', 258, 'Ελληνικά', 'Αποστολή διάσωσης, Μεταφυσικό μυστήριο','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1153005436685, 'Η Αντίσταση', 181, 'Ελληνικά', 'Πολιτική, Διασκορπισμένες μνήμες','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9812685120769, 'Ο Καταζητούμενος', 207, 'Αγγλικά', 'Απομόνωση, Χαμένη αγάπη','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1489895785488, 'Η Πρόκληση του Μυστήριου', 211, 'Αγγλικά', 'Επικίνδυνος έρωτας, Εξαφάνιση','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8548363419878, 'Ο Περιηγητής', 215, 'Αγγλικά', 'Οικογενειακό δράμα, Μαγεία','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9207742114175, 'Ο Ταξιδιώτης', 385, 'Ελληνικά', 'Απόδραση, Καταδίκη','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1798300176342, 'Η Ανατροπή', 217, 'Ελληνικά', 'Μυστική αποστολή, Καταδίωξη','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4589910366138, 'Ο Αιχμάλωτος', 228, 'Ελληνικά', 'Απομόνωση, Φυλακισμένος','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9109804213797, 'Η Συνεργασία', 362, 'Αγγλικά', 'Εξέγερση, Ιατρικό','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2400288317436, 'Ο Φλεγόμενος', 270, 'Αγγλικά', 'Φυλακισμένος, Οικογενειακό δράμα','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6145925892422, 'Η Ανεπίσημη Αλήθεια', 343, 'Αγγλικά', 'Συνωμοσιολογία, Οικογενειακό δράμα','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3220123116607, 'Ο Παρατηρητής', 237, 'Ελληνικά', 'Ερωτικό τρίγωνο, Επιζώντες','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8900757253020, 'Ο Απεγνωσμένος', 167, 'Ελληνικά', 'Επιζώντες, Ερωτικό τρίγωνο','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3107335369872, 'Η Κατασκοπεία', 342, 'Αγγλικά', 'Μαγεία, Συνωμοσιολογία','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9094793362769, 'Ο Εγκληματολόγος', 377, 'Ελληνικά', 'Απόδραση, Ιατρικό','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9858765974982, 'Η Παγίδα του Χρόνου', 316, 'Ελληνικά', 'Εθνική ταυτότητα, Κυνήγι θησαυρού','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9547811883165, 'Ο Συνεργάτης', 335, 'Αγγλικά', 'Σχέσεις εξουσίας, Διπλωματικό','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8626958072945, 'Ο Χρονοταξιδιώτης', 275, 'Αγγλικά', 'Εξωγήινη ζωή, Αναζήτηση','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1458823165875, 'Η Απαγωγή της Ελευθερίας', 318, 'Αγγλικά', 'Εξωγήινη ζωή, Εξέγερση','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2396929730247, 'Ο Ανεπιθύμητος Πρόξενος', 358, 'Αγγλικά', 'Συνωμοσιολογία, Καταδίωξη','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4296522430758, 'Η Καταραμένη Κληρονομιά', 254, 'Ελληνικά', 'Απομόνωση, Καταδίωξη','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3064009453430, 'Ο Προδότης της Δημοκρατίας', 386, 'Ελληνικά', 'Αντίσταση, Μαγεία','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1453031648935, 'Η Αλήθεια των Σκιών', 382, 'Ελληνικά', 'Διασκορπισμένες μνήμες, Φυλακισμένος','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4693874922830, 'Ο Απροσάρμοστος Πρωτοπόρος', 308, 'Αγγλικά', 'Κοινωνική κριτική, Μυστική αποστολή','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4454807324148, 'Ο Χειρότερος Εχθρός', 180, 'Αγγλικά', 'Χαμένη αγάπη, Αποκάλυψη','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4440304732510, 'Η Συνάντηση των Αποκλεισμένων', 156, 'Αγγλικά', 'Μαγεία, Επικίνδυνος έρωτας','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1568254810189, 'Ο Ανακριτής', 376, 'Ελληνικά', 'Οικογενειακό δράμα, Ιατρικό','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8962836923420, 'Η Προδοσία του Ειρηνικού', 346, 'Ελληνικά', 'Μεταφυσικό μυστήριο, Ανταρσία','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7214248851312, 'Ο Παγιδευμένος', 194, 'Ελληνικά', 'Εκδίκηση, Καταδίκη','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4650969131516, 'Ο Σκοτεινός Εκδικητής', 301, 'Αγγλικά', 'Αναζήτηση, Επιστημονική έρευνα','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2833210167593, 'Η Επιβίωση της Μνήμης', 322, 'Ελληνικά', 'Συνωμοσιολογία, Απομόνωση','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7561444116695, 'Ο Αναζητητής', 252, 'Αγγλικά', 'Αναμέτρηση, Δικαστικό','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9033221237235, 'Ο Κυνηγός της Αλήθειας', 183, 'Αγγλικά', 'Εθνική ταυτότητα, Κατασκοπεία','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9354178882597, 'Η Επιστροφή του Πειρατή', 249, 'Ελληνικά', 'Αναζήτηση, Εθνική ταυτότητα','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3802096622413, 'Ο Αποκαλυπτής', 327, 'Ελληνικά', 'Καταδίκη, Απόδραση','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7990244879027, 'Η Ανυπακοή', 178, 'Ελληνικά', 'Αναζήτηση, Αποκάλυψη','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4858225663620, 'Ο Αγώνας', 389, 'Ελληνικά', 'Συνωμοσία, Εξωγήινη ζωή','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7711413737235, 'Ο Τελευταίος Προδότης', 333, 'Αγγλικά', 'Επιζώντες, Κοινωνική κριτική','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7659489693711, 'Η Μυστική Κωδικοποίηση', 255, 'Αγγλικά', 'Μαγεία, Αντίσταση','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6848325114167, 'Ο Περίεργος', 158, 'Ελληνικά', 'Διασκορπισμένες μνήμες, Ανταρσία','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2145897665884, 'Η Καταδίωξη του Εγώ', 151, 'Αγγλικά', 'Εξωγήινη ζωή, Αποκάλυψη','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(1347941499483, 'Ο Σκοτεινός Ποιητής', 264, 'Αγγλικά', 'Ιατρικό, Οικογενειακό δράμα','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4391229539277, 'Η Αλήθεια του Μύθου', 172, 'Αγγλικά', 'Εξέγερση, Εξερεύνηση','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(8132742901390, 'Ο Εκκολαπτόμενος', 151, 'Ελληνικά', 'Ερωτικό τρίγωνο, Μαγεία','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7367371304098, 'Ο Ανεξάρτητος Κυνηγός', 347, 'Αγγλικά', 'Καταδίκη, Επιζώντες','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3656018719947, 'Η Ανεπιθύμητη Διαδρομή', 205, 'Αγγλικά', 'Οικογενειακό δράμα, Συνωμοσία','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6287708802067, 'Ο Απρόβλεπτος Συνωμοσιολόγος', 172, 'Ελληνικά', 'Επιστημονική έρευνα, Διασκορπισμένες μνήμες','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3182701383200, 'Ο Πρόξενος', 390, 'Ελληνικά', 'Συνωμοσία, Μυστική αποστολή','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9739130749705, 'Η Συνεργασία των Εχθρών', 286, 'Αγγλικά', 'Ανταρσία, Εξαφάνιση','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3174778329473, 'Ο Περιθωριοποιημένος', 252, 'Ελληνικά', 'Μαγεία, Καταδίωξη','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9765654361715, 'Η Αιχμάλωτη Ελευθερία', 279, 'Αγγλικά', 'Διπλωματικό, Ερωτικό τρίγωνο','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7450357055002, 'Ο Πρωτοπόρος της Σκιάς', 239, 'Αγγλικά', 'Αποστολή διάσωσης, Αναζήτηση','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6762375278243, 'Η Απόπειρα', 373, 'Ελληνικά', 'Αποστολή διάσωσης, Ιατρικό','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(2372413716794, 'Ο Φονιάς', 398, 'Αγγλικά', 'Ανταρσία, Αναζήτηση','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7792489045395, 'Ο Επαναστάτης των Αισθήσεων', 364, 'Ελληνικά', 'Συνωμοσιολογία, Μυστική αποστολή','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(5517373755374, 'Η Εξομολόγηση', 169, 'Αγγλικά', 'Πολεμικό δράμα, Ερωτικό τρίγωνο','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(3207473542944, 'Ο Τρομοκράτης', 356, 'Ελληνικά', 'Κοινωνική κριτική, Ιατρικό','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6511646113812, 'Η Κατάρα', 235, 'Ελληνικά', 'Συνωμοσιολογία, Μαγεία','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7434507091721, 'Ο Αποκλεισμένος', 280, 'Ελληνικά', 'Μαγεία, Οικογενειακό δράμα','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7438096765267, 'Ο Κατακτητής', 242, 'Ελληνικά', 'Αποστολή διάσωσης, Εξαφάνιση','Εκδόσεις Ψυχογιός');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6219856404541, 'Η Πρόσκληση', 389, 'Αγγλικά', 'Επανάσταση, Καταδίωξη','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6350033594347, 'Ο Φύλακας της Σκοτεινής Πύλης', 273, 'Αγγλικά', 'Ερωτικό τρίγωνο, Πολεμικό δράμα','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(9490109880272, 'Η Απόδραση του Κρατουμένου', 234, 'Ελληνικά', 'Εξωγήινη ζωή, Ανταρσία','Εκδόσεις Μεταίχμιο');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6027037313846, 'Ο Μεταμορφωμένος Πράκτορας', 318, 'Ελληνικά', 'Πολιτική, Εξερεύνηση','Εκδόσεις Ίκαρος');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(6331997014819, 'Η Κρυφή Απειλή', 180, 'Ελληνικά', 'Εξέγερση, Συνωμοσία','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(7205097535074, 'Ο Προδότης του Παρελθόντος', 226, 'Αγγλικά', 'Ανταρσία, Διπλωματικό','Εκδόσεις Πατάκη');


INSERT INTO book (isbn, title, pages, language, keywords, publisher)
VALUES(4268627099896, 'Η Απειλητική Ανεξαρτησία', 164, 'Αγγλικά', 'Αποστολή διάσωσης, Εξέγερση','Εκδόσεις Ψυχογιός');




/*------------------------------------------------ Library Book Inserts -----------------------------------------*/
INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 8697261847388, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6219856404541, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4440304732510, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9224583734754, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1489895785488, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9219034632769, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9567718119779, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4115250890401, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2400288317436, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8298667821950, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4606566578861, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6511646113812, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9491414035477, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7659489693711, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9109804213797, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4589910366138, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3770947998401, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3656018719947, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8336473825612, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2372413716794, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8341696933214, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1116606958982, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 7792489045395, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1798300176342, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2131928463530, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1347941499483, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9547811883165, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6688751513177, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2903278609230, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2114657248842, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3064009453430, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6027037313846, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2433916935501, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1889530462928, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4946671575029, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6350033594347, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2012096842470, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4832966441647, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6331997014819, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8982090089752, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3220123116607, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 7367371304098, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3107335369872, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1430937623633, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4693874922830, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4650969131516, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8900757253020, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9858765974982, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 7016908686537, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2349417521177, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7158670919866, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9765654361715, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1458823165875, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 5494724089011, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 5880267763753, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 8521608397202, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6871703830013, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3692740665327, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9207742114175, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9033221237235, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9862578231662, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4929859987550, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7990244879027, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3636299678055, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1334143094508, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1488515868119, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3182701383200, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8498752694348, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9324118711655, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7811720330252, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6653159087817, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1453031648935, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9737863198576, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7434507091721, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6762375278243, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4268627099896, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6931627909053, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9993567451113, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2145897665884, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9490109880272, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6153360567012, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3348697188116, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4454807324148, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3802096622413, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1074560664703, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9094793362769, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9574109824068, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3174778329473, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 5015118156484, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3127865758618, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7438096765267, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2268167135439, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8132742901390, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4869870691198, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1126812354700, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7755898641996, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4296522430758, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 5566444965150, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3756980224276, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3013463266893, 1);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7561444116695, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6848325114167, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 7755898641996, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9207742114175, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2349417521177, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6682660543221, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2145897665884, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1347941499483, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8132742901390, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3656018719947, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4770340963387, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9577651658527, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3174778329473, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1334143094508, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3925719614933, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3297437336773, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3770947998401, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4440304732510, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9491414035477, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6688751513177, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 5494724089011, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 8766336552641, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9324118711655, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7016908686537, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9094793362769, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6219856404541, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2594664167353, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1430937623633, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1297436011637, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 5015118156484, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 7659489693711, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7158670919866, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6629370975730, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3064009453430, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6027037313846, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 5566444965150, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 7567169927335, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8298667821950, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1212148607497, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4140951777695, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8418630659564, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9567718119779, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8626958072945, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9812685120769, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6331997014819, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1153005436685, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6604819383267, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2833210167593, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4152806489920, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1306445796635, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4869870691198, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9033221237235, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3578107963372, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1884752033664, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9574109824068, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2131928463530, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9109804213797, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8982090089752, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1458823165875, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4454807324148, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4751001788808, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 5508185951725, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9811917595601, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2984578966862, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9858765974982, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9224583734754, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9406856102132, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7281413357185, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6871703830013, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3261285399325, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8548363419878, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8264725327153, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2167684398452, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3013463266893, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4785138356950, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1999175221635, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3193969717953, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7214248851312, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4606566578861, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3243125056920, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6153360567012, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2364347149874, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6287708802067, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9765654361715, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9993567451113, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2433916935501, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4650969131516, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7990244879027, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8498752694348, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9737863198576, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6456794880303, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9028150382753, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1453031648935, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4858225663620, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2372413716794, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1073629279588, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6653159087817, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7792489045395, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6145925892422, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2972451307144, 2);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6452966853203, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4751001788808, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 5517373755374, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1074560664703, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9812685120769, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4589910366138, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9354178882597, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7755898641996, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1884752033664, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9574109824068, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9737863198576, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1347941499483, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2594664167353, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9567718119779, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6145925892422, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7281413357185, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4505048373798, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4785138356950, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4152806489920, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6219856404541, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6762375278243, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9739130749705, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1486540055135, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9219034632769, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3193969717953, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4858225663620, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 5183409819690, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9577651658527, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1999175221635, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7214248851312, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6931627909053, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4268627099896, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 7016908686537, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2833210167593, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3174778329473, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6682660543221, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1889530462928, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7438096765267, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4140951777695, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9882758923892, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8341696933214, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 8264725327153, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 5015118156484, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4946671575029, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9207742114175, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2972451307144, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4391229539277, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7450357055002, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4296522430758, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9862578231662, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3127865758618, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9109804213797, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4770340963387, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2114657248842, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7792489045395, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9033221237235, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8132742901390, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8418630659564, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3618456023178, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4832966441647, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8626958072945, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4440304732510, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6632716926317, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7990244879027, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9094793362769, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9324118711655, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3756980224276, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3107335369872, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3636299678055, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 5566444965150, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3079396977330, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3656018719947, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1841363972930, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1568254810189, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1430937623633, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2433916935501, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8548363419878, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3348697188116, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 7158670919866, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3925719614933, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 5456429866755, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3261285399325, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6653159087817, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1212148607497, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1334143094508, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3297437336773, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7659489693711, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2289945496584, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7605024846753, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9993567451113, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 8910950787911, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8962836923420, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2364347149874, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6153360567012, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6848325114167, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7205097535074, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9028150382753, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1292103779027, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1458823165875, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 8766336552641, 3);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2833210167593, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9765654361715, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4693874922830, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 5517373755374, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 8498752694348, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7711413737235, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1306445796635, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 8298667821950, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6350033594347, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8626958072945, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4173279492495, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1297436011637, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3578107963372, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1334143094508, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8982090089752, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4946671575029, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7016908686537, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3174778329473, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3770947998401, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3925719614933, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2903278609230, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2594664167353, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7755898641996, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3182701383200, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4505048373798, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9207742114175, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6452966853203, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4869870691198, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9490109880272, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6287708802067, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9547811883165, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8766336552641, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2289945496584, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3064009453430, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8910950787911, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2167684398452, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3107335369872, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8962836923420, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 7990244879027, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6145925892422, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6723873435411, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1889530462928, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9109804213797, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9219034632769, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2972451307144, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1347941499483, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6219856404541, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3261285399325, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6682660543221, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6511646113812, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4454807324148, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4650969131516, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4785138356950, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6762375278243, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6331997014819, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1999175221635, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6632716926317, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 5494724089011, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4268627099896, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3802096622413, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6604819383267, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1074560664703, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 7561444116695, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6688751513177, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1841363972930, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3243125056920, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3656018719947, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3013463266893, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2984578966862, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9007144409202, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3618456023178, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1798300176342, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 5880267763753, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9811917595601, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9812685120769, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4152806489920, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 5456429866755, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2400288317436, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9567718119779, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7450357055002, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1884752033664, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7438096765267, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2114657248842, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9739130749705, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1116606958982, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1458823165875, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2268167135439, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4391229539277, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4589910366138, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2372413716794, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8132742901390, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3207473542944, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1212148607497, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4440304732510, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7434507091721, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1126812354700, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7811720330252, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9354178882597, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3127865758618, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9882758923892, 4);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9567718119779, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4606566578861, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3618456023178, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9811917595601, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4152806489920, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1488515868119, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6688751513177, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 5566444965150, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3578107963372, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6511646113812, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1212148607497, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2372413716794, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7281413357185, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1568254810189, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 5517373755374, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4268627099896, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 5880267763753, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 5183409819690, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2833210167593, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 8697261847388, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9207742114175, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6219856404541, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1430937623633, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3207473542944, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9490109880272, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8521608397202, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9739130749705, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1999173972484, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4115250890401, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1306445796635, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1489895785488, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1126812354700, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8264725327153, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3107335369872, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6629370975730, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8900757253020, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4693874922830, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3636299678055, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 8548363419878, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4391229539277, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3220123116607, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1297436011637, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7711413737235, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8626958072945, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9882758923892, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4832966441647, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6762375278243, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6287708802067, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4929859987550, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2364347149874, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9765654361715, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6456794880303, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9354178882597, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7755898641996, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7605024846753, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7214248851312, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9033221237235, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1841363972930, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 5508185951725, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7659489693711, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1884752033664, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2349417521177, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1153005436685, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7567169927335, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9737863198576, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9858765974982, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4650969131516, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4296522430758, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3127865758618, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7792489045395, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9993567451113, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8910950787911, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9007144409202, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1347941499483, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4089950673159, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7990244879027, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8254238620165, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8962836923420, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3193969717953, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3261285399325, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9219034632769, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3756980224276, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2131928463530, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 5494724089011, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9109804213797, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1074560664703, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6848325114167, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6350033594347, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 5456429866755, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2972451307144, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 7811720330252, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1999175221635, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4454807324148, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6653159087817, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 7367371304098, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2167684398452, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9406856102132, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1116606958982, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7438096765267, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3064009453430, 5);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7281413357185, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2364347149874, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 7567169927335, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9547811883165, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1073629279588, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3656018719947, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 5494724089011, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9094793362769, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9739130749705, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3692740665327, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 5880267763753, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1074560664703, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4946671575029, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8336473825612, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4268627099896, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6452966853203, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4140951777695, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7811720330252, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3636299678055, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9219034632769, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1453031648935, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6653159087817, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8498752694348, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1798300176342, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9028150382753, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 7990244879027, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3756980224276, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9567718119779, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7214248851312, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9812685120769, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1841363972930, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 2167684398452, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9574109824068, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 5517373755374, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6153360567012, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3174778329473, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4173279492495, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1999173972484, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4089950673159, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3064009453430, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4454807324148, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2833210167593, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7205097535074, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4858225663620, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4785138356950, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2114657248842, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4296522430758, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2984578966862, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1297436011637, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9007144409202, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 3107335369872, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6682660543221, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9324118711655, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1126812354700, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6456794880303, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1884752033664, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 4606566578861, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6219856404541, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 3127865758618, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 7158670919866, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 8264725327153, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6027037313846, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9406856102132, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9490109880272, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1292103779027, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6511646113812, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7605024846753, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9224583734754, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2396929730247, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 8341696933214, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4589910366138, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9207742114175, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4869870691198, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 5183409819690, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9882758923892, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7016908686537, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 9858765974982, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6632716926317, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 2145897665884, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 9811917595601, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 6145925892422, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 1153005436685, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 4440304732510, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9491414035477, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 1212148607497, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3220123116607, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7755898641996, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 7561444116695, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3207473542944, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2903278609230, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7367371304098, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 4667412452750, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (3, 6287708802067, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 7438096765267, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 1486540055135, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 8697261847388, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 2972451307144, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 3079396977330, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (2, 6629370975730, 6);

INSERT INTO library_book(copies, isbn, school_id) VALUES (1, 9033221237235, 6);

/*--------------------------------------- Author Inserts -----------------------------------------------*/

INSERT INTO author (name, surname) VALUES ('Μάρκος', 'Πατρίκιος');

INSERT INTO author (name, surname) VALUES ('Σάββας', 'Παναγιωτίδης');

INSERT INTO author (name, surname) VALUES ('Νίκολαος', 'Καδιανάκης');

INSERT INTO author (name, surname) VALUES ('Διονύσιος', 'Σπυρίδωνος');

INSERT INTO author (name, surname) VALUES ('Λουκάς', 'Παπαμιχαήλ');

INSERT INTO author (name, surname) VALUES ('Αντώνιος', 'Κωνσταντίνου');

INSERT INTO author (name, surname) VALUES ('Νικήτας', 'Ανδρικόπουλος');

INSERT INTO author (name, surname) VALUES ('Ιωάννης', 'Δημητρίου');

INSERT INTO author (name, surname) VALUES ('Σπύρίδων', 'Κοζύρης');

INSERT INTO author (name, surname) VALUES ('Πέτρος', 'Αλεξίου');

INSERT INTO author (name, surname) VALUES ('Γεώργιος', 'Παπαστεφάνου');

INSERT INTO author (name, surname) VALUES ('Στέφανος', 'Αθανασίου');

INSERT INTO author (name, surname) VALUES ('Αχιλλεύς', 'Παπανδρέου');

INSERT INTO author (name, surname) VALUES ('Αχιλλεύς', 'Μιχαήλ');

INSERT INTO author (name, surname) VALUES ('Στέφανος', 'Δημητρίου');

INSERT INTO author (name, surname) VALUES ('Γρηγόριος', 'Χατζής');

INSERT INTO author (name, surname) VALUES ('Λουκάς', 'Κωνσταντίνου');

INSERT INTO author (name, surname) VALUES ('Θωμάς', 'Παπαναστασίου');

INSERT INTO author (name, surname) VALUES ('Αλέξανδρος', 'Γεωργίου');

INSERT INTO author (name, surname) VALUES ('Γεώργιος', 'Παπαμιχαήλ');

INSERT INTO author (name, surname) VALUES ('Μάρκος', 'Χριστοφόρου');

INSERT INTO author (name, surname) VALUES ('Σπύρίδων', 'Βασιλείου');

INSERT INTO author (name, surname) VALUES ('Στέφανος', 'Χριστοφόρου');

INSERT INTO author (name, surname) VALUES ('Νίκολαος', 'Σπυρίδωνος');

INSERT INTO author (name, surname) VALUES ('Αλέξανδρος', 'Τσουμάκος');

INSERT INTO author (name, surname) VALUES ('Γεωργία', 'Καδιανάκη');

INSERT INTO author (name, surname) VALUES ('Χριστίνα', 'Τσιτσιμπίκου');

INSERT INTO author (name, surname) VALUES ('Βασιλική', 'Παυλίδου');

INSERT INTO author (name, surname) VALUES ('Σταυρούλα', 'Χριστοδούλου');

INSERT INTO author (name, surname) VALUES ('Δέσποινα', 'Κατσαρού');

INSERT INTO author (name, surname) VALUES ('Μαρία', 'Τσουμάκου');

INSERT INTO author (name, surname) VALUES ('Ναυσικά', 'Αθανασίου');

INSERT INTO author (name, surname) VALUES ('Μαρίνα', 'Αθανασίου');

INSERT INTO author (name, surname) VALUES ('Μαρία', 'Αθανασίου');

INSERT INTO author (name, surname) VALUES ('Θεοδώρα', 'Τσουμάκου');

INSERT INTO author (name, surname) VALUES ('Παρασκευή', 'Αναστασίου');

INSERT INTO author (name, surname) VALUES ('Αλίκη', 'Τσουμάκου');

INSERT INTO author (name, surname) VALUES ('Ευσταθία', 'Καδιανάκη');

INSERT INTO author (name, surname) VALUES ('Παναγιώτα', 'Παυλίδου');

INSERT INTO author (name, surname) VALUES ('Δανάη', 'Χριστοδούλου');

INSERT INTO author (name, surname) VALUES ('Ελένη', 'Παναγιωτοπούλου');

INSERT INTO author (name, surname) VALUES ('Αλίκη', 'Βλάχου');

INSERT INTO author (name, surname) VALUES ('Αγγελική', 'Χατζή');

INSERT INTO author (name, surname) VALUES ('Ναυσικά', 'Αντωνίου');

INSERT INTO author (name, surname) VALUES ('Αγάπη', 'Παπαδοπούλου');

INSERT INTO author (name, surname) VALUES ('Ευαγγελία', 'Καραγιάννη');

INSERT INTO author (name, surname) VALUES ('Αθηνά', 'Τσουμάκου');

INSERT INTO author (name, surname) VALUES ('Χριστίνα', 'Καραβαγγέλη');

INSERT INTO author (name, surname) VALUES ('Παρασκευή', 'Κατσαρού');

INSERT INTO author (name, surname) VALUES ('Ευσταθία', 'Δαμασκηνού');


/*-------------------------------------- Book Authors Inserts ---------------------------------------------------*/

INSERT INTO book_author (isbn, name, surname) VALUES (7281413357185, 'Γεώργιος', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (2364347149874, 'Ναυσικά', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (2364347149874, 'Αχιλλεύς', 'Παπανδρέου');

INSERT INTO book_author (isbn, name, surname) VALUES (2364347149874, 'Μαρίνα', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (7567169927335, 'Μάρκος', 'Πατρίκιος');

INSERT INTO book_author (isbn, name, surname) VALUES (9547811883165, 'Αθηνά', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (9547811883165, 'Νικήτας', 'Ανδρικόπουλος');

INSERT INTO book_author (isbn, name, surname) VALUES (9547811883165, 'Παρασκευή', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (1073629279588, 'Χριστίνα', 'Τσιτσιμπίκου');

INSERT INTO book_author (isbn, name, surname) VALUES (1073629279588, 'Ναυσικά', 'Αντωνίου');

INSERT INTO book_author (isbn, name, surname) VALUES (3656018719947, 'Ευαγγελία', 'Καραγιάννη');

INSERT INTO book_author (isbn, name, surname) VALUES (5494724089011, 'Ευσταθία', 'Καδιανάκη');

INSERT INTO book_author (isbn, name, surname) VALUES (5494724089011, 'Γεώργιος', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (5494724089011, 'Μάρκος', 'Πατρίκιος');

INSERT INTO book_author (isbn, name, surname) VALUES (9094793362769, 'Στέφανος', 'Χριστοφόρου');

INSERT INTO book_author (isbn, name, surname) VALUES (9094793362769, 'Λουκάς', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (9739130749705, 'Λουκάς', 'Κωνσταντίνου');

INSERT INTO book_author (isbn, name, surname) VALUES (9739130749705, 'Ευαγγελία', 'Καραγιάννη');

INSERT INTO book_author (isbn, name, surname) VALUES (3692740665327, 'Μαρία', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (5880267763753, 'Στέφανος', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (5880267763753, 'Χριστίνα', 'Τσιτσιμπίκου');

INSERT INTO book_author (isbn, name, surname) VALUES (5880267763753, 'Χριστίνα', 'Καραβαγγέλη');

INSERT INTO book_author (isbn, name, surname) VALUES (1074560664703, 'Δανάη', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (1074560664703, 'Αχιλλεύς', 'Μιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (4946671575029, 'Νίκολαος', 'Σπυρίδωνος');

INSERT INTO book_author (isbn, name, surname) VALUES (4946671575029, 'Γρηγόριος', 'Χατζής');

INSERT INTO book_author (isbn, name, surname) VALUES (8336473825612, 'Ευσταθία', 'Καδιανάκη');

INSERT INTO book_author (isbn, name, surname) VALUES (8336473825612, 'Αλέξανδρος', 'Γεωργίου');

INSERT INTO book_author (isbn, name, surname) VALUES (8336473825612, 'Γεώργιος', 'Παπαστεφάνου');

INSERT INTO book_author (isbn, name, surname) VALUES (4268627099896, 'Αλίκη', 'Βλάχου');

INSERT INTO book_author (isbn, name, surname) VALUES (6452966853203, 'Αθηνά', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (6452966853203, 'Πέτρος', 'Αλεξίου');

INSERT INTO book_author (isbn, name, surname) VALUES (4140951777695, 'Δανάη', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (4140951777695, 'Μάρκος', 'Πατρίκιος');

INSERT INTO book_author (isbn, name, surname) VALUES (7811720330252, 'Μάρκος', 'Πατρίκιος');

INSERT INTO book_author (isbn, name, surname) VALUES (3636299678055, 'Αχιλλεύς', 'Παπανδρέου');

INSERT INTO book_author (isbn, name, surname) VALUES (3636299678055, 'Πέτρος', 'Αλεξίου');

INSERT INTO book_author (isbn, name, surname) VALUES (9219034632769, 'Στέφανος', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (9219034632769, 'Χριστίνα', 'Καραβαγγέλη');

INSERT INTO book_author (isbn, name, surname) VALUES (1453031648935, 'Αγάπη', 'Παπαδοπούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (1453031648935, 'Μαρία', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (1453031648935, 'Αχιλλεύς', 'Παπανδρέου');

INSERT INTO book_author (isbn, name, surname) VALUES (6653159087817, 'Διονύσιος', 'Σπυρίδωνος');

INSERT INTO book_author (isbn, name, surname) VALUES (6653159087817, 'Μαρίνα', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (8498752694348, 'Αθηνά', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (1798300176342, 'Θεοδώρα', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (1798300176342, 'Μαρία', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (9028150382753, 'Ιωάννης', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (7990244879027, 'Παναγιώτα', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (7990244879027, 'Αλέξανδρος', 'Γεωργίου');

INSERT INTO book_author (isbn, name, surname) VALUES (3756980224276, 'Αγγελική', 'Χατζή');

INSERT INTO book_author (isbn, name, surname) VALUES (9567718119779, 'Γεώργιος', 'Παπαστεφάνου');

INSERT INTO book_author (isbn, name, surname) VALUES (7214248851312, 'Ευσταθία', 'Καδιανάκη');

INSERT INTO book_author (isbn, name, surname) VALUES (7214248851312, 'Θεοδώρα', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (7214248851312, 'Αγάπη', 'Παπαδοπούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (9812685120769, 'Μαρίνα', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (9812685120769, 'Αλίκη', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (1841363972930, 'Γεώργιος', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (1841363972930, 'Βασιλική', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (2167684398452, 'Ναυσικά', 'Αντωνίου');

INSERT INTO book_author (isbn, name, surname) VALUES (2167684398452, 'Δανάη', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (9574109824068, 'Στέφανος', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (9574109824068, 'Χριστίνα', 'Τσιτσιμπίκου');

INSERT INTO book_author (isbn, name, surname) VALUES (5517373755374, 'Χριστίνα', 'Καραβαγγέλη');

INSERT INTO book_author (isbn, name, surname) VALUES (5517373755374, 'Στέφανος', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (6153360567012, 'Στέφανος', 'Χριστοφόρου');

INSERT INTO book_author (isbn, name, surname) VALUES (6153360567012, 'Αλέξανδρος', 'Τσουμάκος');

INSERT INTO book_author (isbn, name, surname) VALUES (3174778329473, 'Αλέξανδρος', 'Γεωργίου');

INSERT INTO book_author (isbn, name, surname) VALUES (4173279492495, 'Ευσταθία', 'Καδιανάκη');

INSERT INTO book_author (isbn, name, surname) VALUES (4173279492495, 'Νίκολαος', 'Καδιανάκης');

INSERT INTO book_author (isbn, name, surname) VALUES (4173279492495, 'Αλέξανδρος', 'Τσουμάκος');

INSERT INTO book_author (isbn, name, surname) VALUES (1999173972484, 'Παναγιώτα', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (1999173972484, 'Αντώνιος', 'Κωνσταντίνου');

INSERT INTO book_author (isbn, name, surname) VALUES (1999173972484, 'Σπύρίδων', 'Κοζύρης');

INSERT INTO book_author (isbn, name, surname) VALUES (4089950673159, 'Μαρία', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (3064009453430, 'Ευαγγελία', 'Καραγιάννη');

INSERT INTO book_author (isbn, name, surname) VALUES (3064009453430, 'Δανάη', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (3064009453430, 'Γεώργιος', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (4454807324148, 'Στέφανος', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (4454807324148, 'Δέσποινα', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (2833210167593, 'Νίκολαος', 'Σπυρίδωνος');

INSERT INTO book_author (isbn, name, surname) VALUES (2833210167593, 'Ευσταθία', 'Καδιανάκη');

INSERT INTO book_author (isbn, name, surname) VALUES (2833210167593, 'Παρασκευή', 'Αναστασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (7205097535074, 'Παναγιώτα', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (4858225663620, 'Αγγελική', 'Χατζή');

INSERT INTO book_author (isbn, name, surname) VALUES (4785138356950, 'Στέφανος', 'Χριστοφόρου');

INSERT INTO book_author (isbn, name, surname) VALUES (4785138356950, 'Γεώργιος', 'Παπαστεφάνου');

INSERT INTO book_author (isbn, name, surname) VALUES (4785138356950, 'Αλέξανδρος', 'Τσουμάκος');

INSERT INTO book_author (isbn, name, surname) VALUES (2114657248842, 'Ελένη', 'Παναγιωτοπούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (2114657248842, 'Σπύρίδων', 'Βασιλείου');

INSERT INTO book_author (isbn, name, surname) VALUES (2114657248842, 'Ναυσικά', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (4296522430758, 'Νικήτας', 'Ανδρικόπουλος');

INSERT INTO book_author (isbn, name, surname) VALUES (4296522430758, 'Αλίκη', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (4296522430758, 'Παναγιώτα', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (2984578966862, 'Ιωάννης', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (1297436011637, 'Στέφανος', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (9007144409202, 'Μάρκος', 'Χριστοφόρου');

INSERT INTO book_author (isbn, name, surname) VALUES (9007144409202, 'Αχιλλεύς', 'Μιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (9007144409202, 'Αλέξανδρος', 'Τσουμάκος');

INSERT INTO book_author (isbn, name, surname) VALUES (3107335369872, 'Χριστίνα', 'Τσιτσιμπίκου');

INSERT INTO book_author (isbn, name, surname) VALUES (3107335369872, 'Αλέξανδρος', 'Τσουμάκος');

INSERT INTO book_author (isbn, name, surname) VALUES (6682660543221, 'Λουκάς', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (6682660543221, 'Ευσταθία', 'Καδιανάκη');

INSERT INTO book_author (isbn, name, surname) VALUES (6682660543221, 'Ευαγγελία', 'Καραγιάννη');

INSERT INTO book_author (isbn, name, surname) VALUES (9324118711655, 'Στέφανος', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (1126812354700, 'Μαρία', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (1126812354700, 'Αλίκη', 'Βλάχου');

INSERT INTO book_author (isbn, name, surname) VALUES (6456794880303, 'Βασιλική', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (1884752033664, 'Δανάη', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (4606566578861, 'Ναυσικά', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (4606566578861, 'Ευσταθία', 'Καδιανάκη');

INSERT INTO book_author (isbn, name, surname) VALUES (6219856404541, 'Αθηνά', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (3127865758618, 'Δέσποινα', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (3127865758618, 'Αλίκη', 'Βλάχου');

INSERT INTO book_author (isbn, name, surname) VALUES (7158670919866, 'Γεώργιος', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (7158670919866, 'Θεοδώρα', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (7158670919866, 'Αλίκη', 'Βλάχου');

INSERT INTO book_author (isbn, name, surname) VALUES (8264725327153, 'Αγάπη', 'Παπαδοπούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (6027037313846, 'Αγγελική', 'Χατζή');

INSERT INTO book_author (isbn, name, surname) VALUES (6027037313846, 'Δέσποινα', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (9406856102132, 'Διονύσιος', 'Σπυρίδωνος');

INSERT INTO book_author (isbn, name, surname) VALUES (9406856102132, 'Λουκάς', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (9490109880272, 'Δανάη', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (9490109880272, 'Ναυσικά', 'Αντωνίου');

INSERT INTO book_author (isbn, name, surname) VALUES (1292103779027, 'Γρηγόριος', 'Χατζής');

INSERT INTO book_author (isbn, name, surname) VALUES (6511646113812, 'Ευαγγελία', 'Καραγιάννη');

INSERT INTO book_author (isbn, name, surname) VALUES (6511646113812, 'Μάρκος', 'Χριστοφόρου');

INSERT INTO book_author (isbn, name, surname) VALUES (7605024846753, 'Παρασκευή', 'Αναστασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (7605024846753, 'Πέτρος', 'Αλεξίου');

INSERT INTO book_author (isbn, name, surname) VALUES (9224583734754, 'Θωμάς', 'Παπαναστασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (2396929730247, 'Παρασκευή', 'Αναστασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (2396929730247, 'Γεώργιος', 'Παπαστεφάνου');

INSERT INTO book_author (isbn, name, surname) VALUES (8341696933214, 'Παρασκευή', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (4589910366138, 'Ευσταθία', 'Δαμασκηνού');

INSERT INTO book_author (isbn, name, surname) VALUES (4589910366138, 'Γρηγόριος', 'Χατζής');

INSERT INTO book_author (isbn, name, surname) VALUES (9207742114175, 'Μαρίνα', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (9207742114175, 'Νικήτας', 'Ανδρικόπουλος');

INSERT INTO book_author (isbn, name, surname) VALUES (9207742114175, 'Αλέξανδρος', 'Γεωργίου');

INSERT INTO book_author (isbn, name, surname) VALUES (4869870691198, 'Λουκάς', 'Κωνσταντίνου');

INSERT INTO book_author (isbn, name, surname) VALUES (5183409819690, 'Δέσποινα', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (5183409819690, 'Χριστίνα', 'Καραβαγγέλη');

INSERT INTO book_author (isbn, name, surname) VALUES (5183409819690, 'Αχιλλεύς', 'Μιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (9882758923892, 'Λουκάς', 'Κωνσταντίνου');

INSERT INTO book_author (isbn, name, surname) VALUES (9882758923892, 'Δανάη', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (9882758923892, 'Παρασκευή', 'Αναστασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (7016908686537, 'Παρασκευή', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (7016908686537, 'Γρηγόριος', 'Χατζής');

INSERT INTO book_author (isbn, name, surname) VALUES (7016908686537, 'Αχιλλεύς', 'Παπανδρέου');

INSERT INTO book_author (isbn, name, surname) VALUES (9858765974982, 'Χριστίνα', 'Τσιτσιμπίκου');

INSERT INTO book_author (isbn, name, surname) VALUES (6632716926317, 'Σταυρούλα', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (2145897665884, 'Μαρία', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (2145897665884, 'Σπύρίδων', 'Βασιλείου');

INSERT INTO book_author (isbn, name, surname) VALUES (9811917595601, 'Ευαγγελία', 'Καραγιάννη');

INSERT INTO book_author (isbn, name, surname) VALUES (9811917595601, 'Ιωάννης', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (9811917595601, 'Στέφανος', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (6145925892422, 'Ιωάννης', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (6145925892422, 'Παναγιώτα', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (6145925892422, 'Αγγελική', 'Χατζή');

INSERT INTO book_author (isbn, name, surname) VALUES (1153005436685, 'Αλέξανδρος', 'Γεωργίου');

INSERT INTO book_author (isbn, name, surname) VALUES (4440304732510, 'Αλέξανδρος', 'Τσουμάκος');

INSERT INTO book_author (isbn, name, surname) VALUES (4440304732510, 'Παναγιώτα', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (4440304732510, 'Αλέξανδρος', 'Γεωργίου');

INSERT INTO book_author (isbn, name, surname) VALUES (9491414035477, 'Ευαγγελία', 'Καραγιάννη');

INSERT INTO book_author (isbn, name, surname) VALUES (9491414035477, 'Μαρίνα', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (1212148607497, 'Πέτρος', 'Αλεξίου');

INSERT INTO book_author (isbn, name, surname) VALUES (1212148607497, 'Ελένη', 'Παναγιωτοπούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (3220123116607, 'Σπύρίδων', 'Βασιλείου');

INSERT INTO book_author (isbn, name, surname) VALUES (3220123116607, 'Στέφανος', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (7755898641996, 'Νικήτας', 'Ανδρικόπουλος');

INSERT INTO book_author (isbn, name, surname) VALUES (7755898641996, 'Γρηγόριος', 'Χατζής');

INSERT INTO book_author (isbn, name, surname) VALUES (7755898641996, 'Ευσταθία', 'Καδιανάκη');

INSERT INTO book_author (isbn, name, surname) VALUES (7561444116695, 'Δέσποινα', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (7561444116695, 'Ναυσικά', 'Αντωνίου');

INSERT INTO book_author (isbn, name, surname) VALUES (7561444116695, 'Μαρία', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (3207473542944, 'Αντώνιος', 'Κωνσταντίνου');

INSERT INTO book_author (isbn, name, surname) VALUES (3207473542944, 'Χριστίνα', 'Καραβαγγέλη');

INSERT INTO book_author (isbn, name, surname) VALUES (2903278609230, 'Ιωάννης', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (2903278609230, 'Μαρία', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (7367371304098, 'Γεώργιος', 'Παπαστεφάνου');

INSERT INTO book_author (isbn, name, surname) VALUES (4667412452750, 'Νικήτας', 'Ανδρικόπουλος');

INSERT INTO book_author (isbn, name, surname) VALUES (4667412452750, 'Αχιλλεύς', 'Μιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (6287708802067, 'Θωμάς', 'Παπαναστασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (6287708802067, 'Μαρίνα', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (7438096765267, 'Γεώργιος', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (1486540055135, 'Αλέξανδρος', 'Τσουμάκος');

INSERT INTO book_author (isbn, name, surname) VALUES (1486540055135, 'Μαρία', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (8697261847388, 'Γεώργιος', 'Παπαστεφάνου');

INSERT INTO book_author (isbn, name, surname) VALUES (2972451307144, 'Αχιλλεύς', 'Παπανδρέου');

INSERT INTO book_author (isbn, name, surname) VALUES (2972451307144, 'Αλίκη', 'Βλάχου');

INSERT INTO book_author (isbn, name, surname) VALUES (2972451307144, 'Ναυσικά', 'Αντωνίου');

INSERT INTO book_author (isbn, name, surname) VALUES (3079396977330, 'Θεοδώρα', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (3079396977330, 'Αγγελική', 'Χατζή');

INSERT INTO book_author (isbn, name, surname) VALUES (3079396977330, 'Ευσταθία', 'Δαμασκηνού');

INSERT INTO book_author (isbn, name, surname) VALUES (6629370975730, 'Μάρκος', 'Πατρίκιος');

INSERT INTO book_author (isbn, name, surname) VALUES (6629370975730, 'Δανάη', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (6629370975730, 'Αχιλλεύς', 'Παπανδρέου');

INSERT INTO book_author (isbn, name, surname) VALUES (9033221237235, 'Ευαγγελία', 'Καραγιάννη');

INSERT INTO book_author (isbn, name, surname) VALUES (9033221237235, 'Αγάπη', 'Παπαδοπούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (9033221237235, 'Πέτρος', 'Αλεξίου');

INSERT INTO book_author (isbn, name, surname) VALUES (1306445796635, 'Μάρκος', 'Χριστοφόρου');

INSERT INTO book_author (isbn, name, surname) VALUES (2372413716794, 'Γεώργιος', 'Παπαστεφάνου');

INSERT INTO book_author (isbn, name, surname) VALUES (2372413716794, 'Μαρία', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (7792489045395, 'Νίκολαος', 'Καδιανάκης');

INSERT INTO book_author (isbn, name, surname) VALUES (3013463266893, 'Μαρίνα', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (2433916935501, 'Ευσταθία', 'Δαμασκηνού');

INSERT INTO book_author (isbn, name, surname) VALUES (8766336552641, 'Πέτρος', 'Αλεξίου');

INSERT INTO book_author (isbn, name, surname) VALUES (8900757253020, 'Σταυρούλα', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (8982090089752, 'Νικήτας', 'Ανδρικόπουλος');

INSERT INTO book_author (isbn, name, surname) VALUES (6331997014819, 'Δανάη', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (6848325114167, 'Σταυρούλα', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (6848325114167, 'Θωμάς', 'Παπαναστασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (6848325114167, 'Ιωάννης', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (6723873435411, 'Ευσταθία', 'Δαμασκηνού');

INSERT INTO book_author (isbn, name, surname) VALUES (6723873435411, 'Αλίκη', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (6723873435411, 'Γρηγόριος', 'Χατζής');

INSERT INTO book_author (isbn, name, surname) VALUES (8298667821950, 'Δέσποινα', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (7711413737235, 'Βασιλική', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (7711413737235, 'Μάρκος', 'Πατρίκιος');

INSERT INTO book_author (isbn, name, surname) VALUES (1568254810189, 'Σπύρίδων', 'Βασιλείου');

INSERT INTO book_author (isbn, name, surname) VALUES (9109804213797, 'Παρασκευή', 'Αναστασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (6688751513177, 'Στέφανος', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (6688751513177, 'Χριστίνα', 'Τσιτσιμπίκου');

INSERT INTO book_author (isbn, name, surname) VALUES (4751001788808, 'Νίκολαος', 'Καδιανάκης');

INSERT INTO book_author (isbn, name, surname) VALUES (4152806489920, 'Γεώργιος', 'Παπαστεφάνου');

INSERT INTO book_author (isbn, name, surname) VALUES (4152806489920, 'Ευαγγελία', 'Καραγιάννη');

INSERT INTO book_author (isbn, name, surname) VALUES (2012096842470, 'Νικήτας', 'Ανδρικόπουλος');

INSERT INTO book_author (isbn, name, surname) VALUES (1889530462928, 'Παρασκευή', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (1889530462928, 'Χριστίνα', 'Τσιτσιμπίκου');

INSERT INTO book_author (isbn, name, surname) VALUES (1889530462928, 'Αχιλλεύς', 'Μιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (9737863198576, 'Δέσποινα', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (9737863198576, 'Παρασκευή', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (9737863198576, 'Σάββας', 'Παναγιωτίδης');

INSERT INTO book_author (isbn, name, surname) VALUES (2289945496584, 'Θωμάς', 'Παπαναστασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (2289945496584, 'Στέφανος', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (8910950787911, 'Στέφανος', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (1116606958982, 'Διονύσιος', 'Σπυρίδωνος');

INSERT INTO book_author (isbn, name, surname) VALUES (1116606958982, 'Αλίκη', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (1116606958982, 'Αχιλλεύς', 'Παπανδρέου');

INSERT INTO book_author (isbn, name, surname) VALUES (5015118156484, 'Αγγελική', 'Χατζή');

INSERT INTO book_author (isbn, name, surname) VALUES (5015118156484, 'Χριστίνα', 'Καραβαγγέλη');

INSERT INTO book_author (isbn, name, surname) VALUES (3770947998401, 'Ιωάννης', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (3770947998401, 'Διονύσιος', 'Σπυρίδωνος');

INSERT INTO book_author (isbn, name, surname) VALUES (3770947998401, 'Ναυσικά', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (4115250890401, 'Σταυρούλα', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (4115250890401, 'Σπύρίδων', 'Βασιλείου');

INSERT INTO book_author (isbn, name, surname) VALUES (4115250890401, 'Μαρίνα', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (8254238620165, 'Παρασκευή', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (4832966441647, 'Δέσποινα', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (4832966441647, 'Δανάη', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (1489895785488, 'Αγάπη', 'Παπαδοπούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (1489895785488, 'Νίκολαος', 'Σπυρίδωνος');

INSERT INTO book_author (isbn, name, surname) VALUES (1489895785488, 'Στέφανος', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (3243125056920, 'Ευσταθία', 'Καδιανάκη');

INSERT INTO book_author (isbn, name, surname) VALUES (4770340963387, 'Ναυσικά', 'Αντωνίου');

INSERT INTO book_author (isbn, name, surname) VALUES (4505048373798, 'Αχιλλεύς', 'Μιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (4505048373798, 'Ναυσικά', 'Αντωνίου');

INSERT INTO book_author (isbn, name, surname) VALUES (3348697188116, 'Λουκάς', 'Κωνσταντίνου');

INSERT INTO book_author (isbn, name, surname) VALUES (3348697188116, 'Ελένη', 'Παναγιωτοπούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (3348697188116, 'Παρασκευή', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (2400288317436, 'Αλέξανδρος', 'Γεωργίου');

INSERT INTO book_author (isbn, name, surname) VALUES (2400288317436, 'Μαρία', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (7450357055002, 'Αχιλλεύς', 'Μιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (7450357055002, 'Δέσποινα', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (1458823165875, 'Ιωάννης', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (1458823165875, 'Σταυρούλα', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (1458823165875, 'Θεοδώρα', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (2268167135439, 'Λουκάς', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (2268167135439, 'Μαρία', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (6762375278243, 'Μαρία', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (6762375278243, 'Ευσταθία', 'Καδιανάκη');

INSERT INTO book_author (isbn, name, surname) VALUES (5508185951725, 'Νίκολαος', 'Σπυρίδωνος');

INSERT INTO book_author (isbn, name, surname) VALUES (9577651658527, 'Αλίκη', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (4693874922830, 'Στέφανος', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (4693874922830, 'Χριστίνα', 'Τσιτσιμπίκου');

INSERT INTO book_author (isbn, name, surname) VALUES (4693874922830, 'Αγγελική', 'Χατζή');

INSERT INTO book_author (isbn, name, surname) VALUES (3802096622413, 'Παναγιώτα', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (3802096622413, 'Θεοδώρα', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (4929859987550, 'Αγάπη', 'Παπαδοπούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (4929859987550, 'Μάρκος', 'Χριστοφόρου');

INSERT INTO book_author (isbn, name, surname) VALUES (4929859987550, 'Ελένη', 'Παναγιωτοπούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (6931627909053, 'Γεώργιος', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (6931627909053, 'Ευσταθία', 'Δαμασκηνού');

INSERT INTO book_author (isbn, name, surname) VALUES (6931627909053, 'Θεοδώρα', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (1810256525578, 'Παρασκευή', 'Αναστασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (1810256525578, 'Γεώργιος', 'Παπαστεφάνου');

INSERT INTO book_author (isbn, name, surname) VALUES (1810256525578, 'Ευσταθία', 'Δαμασκηνού');

INSERT INTO book_author (isbn, name, surname) VALUES (1999175221635, 'Γεώργιος', 'Παπαστεφάνου');

INSERT INTO book_author (isbn, name, surname) VALUES (1999175221635, 'Ευσταθία', 'Δαμασκηνού');

INSERT INTO book_author (isbn, name, surname) VALUES (7434507091721, 'Λουκάς', 'Κωνσταντίνου');

INSERT INTO book_author (isbn, name, surname) VALUES (5456429866755, 'Παναγιώτα', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (5456429866755, 'Στέφανος', 'Χριστοφόρου');

INSERT INTO book_author (isbn, name, surname) VALUES (5456429866755, 'Μαρίνα', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (6871703830013, 'Γεώργιος', 'Παπαστεφάνου');

INSERT INTO book_author (isbn, name, surname) VALUES (6871703830013, 'Μαρία', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (9862578231662, 'Χριστίνα', 'Τσιτσιμπίκου');

INSERT INTO book_author (isbn, name, surname) VALUES (9862578231662, 'Θωμάς', 'Παπαναστασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (9862578231662, 'Αθηνά', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (8132742901390, 'Σπύρίδων', 'Κοζύρης');

INSERT INTO book_author (isbn, name, surname) VALUES (8132742901390, 'Γεώργιος', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (8626958072945, 'Στέφανος', 'Χριστοφόρου');

INSERT INTO book_author (isbn, name, surname) VALUES (8626958072945, 'Λουκάς', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (8626958072945, 'Σταυρούλα', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (9354178882597, 'Μάρκος', 'Πατρίκιος');

INSERT INTO book_author (isbn, name, surname) VALUES (9354178882597, 'Λουκάς', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (9354178882597, 'Θωμάς', 'Παπαναστασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (1488515868119, 'Βασιλική', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (1488515868119, 'Μαρία', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (9765654361715, 'Αθηνά', 'Τσουμάκου');

INSERT INTO book_author (isbn, name, surname) VALUES (7659489693711, 'Σάββας', 'Παναγιωτίδης');

INSERT INTO book_author (isbn, name, surname) VALUES (7659489693711, 'Αγάπη', 'Παπαδοπούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (7659489693711, 'Αντώνιος', 'Κωνσταντίνου');

INSERT INTO book_author (isbn, name, surname) VALUES (8962836923420, 'Στέφανος', 'Χριστοφόρου');

INSERT INTO book_author (isbn, name, surname) VALUES (8962836923420, 'Ναυσικά', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (8962836923420, 'Αγάπη', 'Παπαδοπούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (1334143094508, 'Μάρκος', 'Χριστοφόρου');

INSERT INTO book_author (isbn, name, surname) VALUES (1334143094508, 'Ναυσικά', 'Αντωνίου');

INSERT INTO book_author (isbn, name, surname) VALUES (5566444965150, 'Ιωάννης', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (8548363419878, 'Νίκολαος', 'Καδιανάκης');

INSERT INTO book_author (isbn, name, surname) VALUES (8548363419878, 'Λουκάς', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (3297437336773, 'Αχιλλεύς', 'Μιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (3297437336773, 'Παρασκευή', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (8418630659564, 'Λουκάς', 'Κωνσταντίνου');

INSERT INTO book_author (isbn, name, surname) VALUES (8521608397202, 'Μαρία', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (8521608397202, 'Θωμάς', 'Παπαναστασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (3578107963372, 'Ευσταθία', 'Δαμασκηνού');

INSERT INTO book_author (isbn, name, surname) VALUES (3578107963372, 'Αγάπη', 'Παπαδοπούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (3578107963372, 'Βασιλική', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (6350033594347, 'Ναυσικά', 'Αντωνίου');

INSERT INTO book_author (isbn, name, surname) VALUES (3182701383200, 'Βασιλική', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (3261285399325, 'Μαρία', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (3193969717953, 'Βασιλική', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (3193969717953, 'Αχιλλεύς', 'Μιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (3193969717953, 'Αλίκη', 'Βλάχου');

INSERT INTO book_author (isbn, name, surname) VALUES (9993567451113, 'Γεώργιος', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (9993567451113, 'Ιωάννης', 'Δημητρίου');

INSERT INTO book_author (isbn, name, surname) VALUES (3618456023178, 'Νικήτας', 'Ανδρικόπουλος');

INSERT INTO book_author (isbn, name, surname) VALUES (3618456023178, 'Χριστίνα', 'Τσιτσιμπίκου');

INSERT INTO book_author (isbn, name, surname) VALUES (3618456023178, 'Νίκολαος', 'Καδιανάκης');

INSERT INTO book_author (isbn, name, surname) VALUES (1430937623633, 'Βασιλική', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (1430937623633, 'Παναγιώτα', 'Παυλίδου');

INSERT INTO book_author (isbn, name, surname) VALUES (2349417521177, 'Σπύρίδων', 'Βασιλείου');

INSERT INTO book_author (isbn, name, surname) VALUES (2349417521177, 'Λουκάς', 'Παπαμιχαήλ');

INSERT INTO book_author (isbn, name, surname) VALUES (6604819383267, 'Σταυρούλα', 'Χριστοδούλου');

INSERT INTO book_author (isbn, name, surname) VALUES (6604819383267, 'Μαρία', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (6604819383267, 'Χριστίνα', 'Τσιτσιμπίκου');

INSERT INTO book_author (isbn, name, surname) VALUES (4650969131516, 'Μαρία', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (4650969131516, 'Δέσποινα', 'Κατσαρού');

INSERT INTO book_author (isbn, name, surname) VALUES (4650969131516, 'Σπύρίδων', 'Κοζύρης');

INSERT INTO book_author (isbn, name, surname) VALUES (1347941499483, 'Ναυσικά', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (1347941499483, 'Χριστίνα', 'Τσιτσιμπίκου');

INSERT INTO book_author (isbn, name, surname) VALUES (4391229539277, 'Αλέξανδρος', 'Τσουμάκος');

INSERT INTO book_author (isbn, name, surname) VALUES (2131928463530, 'Χριστίνα', 'Καραβαγγέλη');

INSERT INTO book_author (isbn, name, surname) VALUES (2131928463530, 'Νίκολαος', 'Σπυρίδωνος');

INSERT INTO book_author (isbn, name, surname) VALUES (2131928463530, 'Στέφανος', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (2594664167353, 'Νίκολαος', 'Καδιανάκης');

INSERT INTO book_author (isbn, name, surname) VALUES (2594664167353, 'Ναυσικά', 'Αθανασίου');

INSERT INTO book_author (isbn, name, surname) VALUES (3925719614933, 'Χριστίνα', 'Καραβαγγέλη');

INSERT INTO book_author (isbn, name, surname) VALUES (3925719614933, 'Ευσταθία', 'Δαμασκηνού');




/*-------------------------------------- Category Inserts -------------------------------------------------------*/

INSERT INTO category (category_name) VALUES ('Λογοτεχνία');

INSERT INTO category (category_name) VALUES ('Ιστορία');

INSERT INTO category (category_name) VALUES ('Διαχείριση χρόνου');

INSERT INTO category (category_name) VALUES ('Μυθιστόρημα');

INSERT INTO category (category_name) VALUES ('Δράμα');

INSERT INTO category (category_name) VALUES ('Τρόμου');

INSERT INTO category (category_name) VALUES ('Ποίηση');

INSERT INTO category (category_name) VALUES ('Επιστημονική Φαντασία');

INSERT INTO category (category_name) VALUES ('Βιογραφίες');

INSERT INTO category (category_name) VALUES ('Αυτοβελτίωση');

INSERT INTO category (category_name) VALUES ('Μαγειρική');

INSERT INTO category (category_name) VALUES ('Τέχνες');

INSERT INTO category (category_name) VALUES ('Φωτογραφία');

INSERT INTO category (category_name) VALUES ('Ταξίδια');

INSERT INTO category (category_name) VALUES ('Περιπέτεια');

INSERT INTO category (category_name) VALUES ('Περιβάλλον');

INSERT INTO category (category_name) VALUES ('Παιδικά');

INSERT INTO category (category_name) VALUES ('Επιστήμη');

INSERT INTO category (category_name) VALUES ('Οικονομία');

INSERT INTO category (category_name) VALUES ('Πνευματική Ανάπτυξη');


/*---------------------------------- Book Category Inserts --------------------------------------------------*/


INSERT INTO book_category(isbn, category_name) VALUES (7281413357185, 'Οικονομία');

INSERT INTO book_category(isbn, category_name) VALUES (7281413357185, 'Μαγειρική');

INSERT INTO book_category(isbn, category_name) VALUES (2364347149874, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (2364347149874, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (2364347149874, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (7567169927335, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (7567169927335, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (7567169927335, 'Οικονομία');

INSERT INTO book_category(isbn, category_name) VALUES (9547811883165, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (9547811883165, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (9547811883165, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (1073629279588, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (1073629279588, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (1073629279588, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (3656018719947, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (3656018719947, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (5494724089011, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (5494724089011, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (9094793362769, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (9094793362769, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (9094793362769, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (9739130749705, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (9739130749705, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (3692740665327, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (3692740665327, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (3692740665327, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (5880267763753, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (5880267763753, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (1074560664703, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (1074560664703, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (1074560664703, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (4946671575029, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (4946671575029, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (8336473825612, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (8336473825612, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (4268627099896, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (4268627099896, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (6452966853203, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (6452966853203, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (6452966853203, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (4140951777695, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (4140951777695, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (7811720330252, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (7811720330252, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (3636299678055, 'Οικονομία');

INSERT INTO book_category(isbn, category_name) VALUES (3636299678055, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (9219034632769, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (9219034632769, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (1453031648935, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (1453031648935, 'Πνευματική Ανάπτυξη');

INSERT INTO book_category(isbn, category_name) VALUES (1453031648935, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (6653159087817, 'Πνευματική Ανάπτυξη');

INSERT INTO book_category(isbn, category_name) VALUES (6653159087817, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (6653159087817, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (8498752694348, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (8498752694348, 'Πνευματική Ανάπτυξη');

INSERT INTO book_category(isbn, category_name) VALUES (8498752694348, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (1798300176342, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (1798300176342, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (9028150382753, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (9028150382753, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (9028150382753, 'Οικονομία');

INSERT INTO book_category(isbn, category_name) VALUES (7990244879027, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (7990244879027, 'Παιδικά');

INSERT INTO book_category(isbn, category_name) VALUES (3756980224276, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (3756980224276, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (9567718119779, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (9567718119779, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (7214248851312, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (7214248851312, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (7214248851312, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (9812685120769, 'Μαγειρική');

INSERT INTO book_category(isbn, category_name) VALUES (9812685120769, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (9812685120769, 'Παιδικά');

INSERT INTO book_category(isbn, category_name) VALUES (1841363972930, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (1841363972930, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (1841363972930, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (2167684398452, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (2167684398452, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (9574109824068, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (9574109824068, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (9574109824068, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (5517373755374, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (5517373755374, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (6153360567012, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (6153360567012, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (3174778329473, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (3174778329473, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (4173279492495, 'Παιδικά');

INSERT INTO book_category(isbn, category_name) VALUES (4173279492495, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (1999173972484, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (1999173972484, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (1999173972484, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (4089950673159, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (4089950673159, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (3064009453430, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (3064009453430, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (3064009453430, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (4454807324148, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (4454807324148, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (4454807324148, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (2833210167593, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (2833210167593, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (2833210167593, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (7205097535074, 'Παιδικά');

INSERT INTO book_category(isbn, category_name) VALUES (7205097535074, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (7205097535074, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (4858225663620, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (4858225663620, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (4785138356950, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (4785138356950, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (2114657248842, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (2114657248842, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (4296522430758, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (4296522430758, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (4296522430758, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (2984578966862, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (2984578966862, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (2984578966862, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (1297436011637, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (1297436011637, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (1297436011637, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (9007144409202, 'Οικονομία');

INSERT INTO book_category(isbn, category_name) VALUES (9007144409202, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (9007144409202, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (3107335369872, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (3107335369872, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (6682660543221, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (6682660543221, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (6682660543221, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (9324118711655, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (9324118711655, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (1126812354700, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (1126812354700, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (6456794880303, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (6456794880303, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (1884752033664, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (1884752033664, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (4606566578861, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (4606566578861, 'Πνευματική Ανάπτυξη');

INSERT INTO book_category(isbn, category_name) VALUES (6219856404541, 'Μαγειρική');

INSERT INTO book_category(isbn, category_name) VALUES (6219856404541, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (3127865758618, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (3127865758618, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (3127865758618, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (7158670919866, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (7158670919866, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (7158670919866, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (8264725327153, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (8264725327153, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (8264725327153, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (6027037313846, 'Οικονομία');

INSERT INTO book_category(isbn, category_name) VALUES (6027037313846, 'Πνευματική Ανάπτυξη');

INSERT INTO book_category(isbn, category_name) VALUES (9406856102132, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (9406856102132, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (9406856102132, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (9490109880272, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (9490109880272, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (9490109880272, 'Οικονομία');

INSERT INTO book_category(isbn, category_name) VALUES (1292103779027, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (1292103779027, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (6511646113812, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (6511646113812, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (6511646113812, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (7605024846753, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (7605024846753, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (9224583734754, 'Μαγειρική');

INSERT INTO book_category(isbn, category_name) VALUES (9224583734754, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (2396929730247, 'Παιδικά');

INSERT INTO book_category(isbn, category_name) VALUES (2396929730247, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (8341696933214, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (8341696933214, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (4589910366138, 'Πνευματική Ανάπτυξη');

INSERT INTO book_category(isbn, category_name) VALUES (4589910366138, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (9207742114175, 'Μαγειρική');

INSERT INTO book_category(isbn, category_name) VALUES (9207742114175, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (9207742114175, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (4869870691198, 'Μαγειρική');

INSERT INTO book_category(isbn, category_name) VALUES (4869870691198, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (4869870691198, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (5183409819690, 'Πνευματική Ανάπτυξη');

INSERT INTO book_category(isbn, category_name) VALUES (5183409819690, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (5183409819690, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (9882758923892, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (9882758923892, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (9882758923892, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (7016908686537, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (7016908686537, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (9858765974982, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (9858765974982, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (9858765974982, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (6632716926317, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (6632716926317, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (6632716926317, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (2145897665884, 'Οικονομία');

INSERT INTO book_category(isbn, category_name) VALUES (2145897665884, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (9811917595601, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (9811917595601, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (6145925892422, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (6145925892422, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (1153005436685, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (1153005436685, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (4440304732510, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (4440304732510, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (4440304732510, 'Πνευματική Ανάπτυξη');

INSERT INTO book_category(isbn, category_name) VALUES (9491414035477, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (9491414035477, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (1212148607497, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (1212148607497, 'Μαγειρική');

INSERT INTO book_category(isbn, category_name) VALUES (3220123116607, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (3220123116607, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (3220123116607, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (7755898641996, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (7755898641996, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (7755898641996, 'Οικονομία');

INSERT INTO book_category(isbn, category_name) VALUES (7561444116695, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (7561444116695, 'Πνευματική Ανάπτυξη');

INSERT INTO book_category(isbn, category_name) VALUES (7561444116695, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (3207473542944, 'Οικονομία');

INSERT INTO book_category(isbn, category_name) VALUES (3207473542944, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (2903278609230, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (2903278609230, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (2903278609230, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (7367371304098, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (7367371304098, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (4667412452750, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (4667412452750, 'Μαγειρική');

INSERT INTO book_category(isbn, category_name) VALUES (4667412452750, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (6287708802067, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (6287708802067, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (6287708802067, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (7438096765267, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (7438096765267, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (1486540055135, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (1486540055135, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (1486540055135, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (8697261847388, 'Οικονομία');

INSERT INTO book_category(isbn, category_name) VALUES (8697261847388, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (8697261847388, 'Μαγειρική');

INSERT INTO book_category(isbn, category_name) VALUES (2972451307144, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (2972451307144, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (3079396977330, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (3079396977330, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (6629370975730, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (6629370975730, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (9033221237235, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (9033221237235, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (1306445796635, 'Μαγειρική');

INSERT INTO book_category(isbn, category_name) VALUES (1306445796635, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (1306445796635, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (2372413716794, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (2372413716794, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (7792489045395, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (7792489045395, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (3013463266893, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (3013463266893, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (2433916935501, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (2433916935501, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (8766336552641, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (8766336552641, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (8766336552641, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (8900757253020, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (8900757253020, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (8982090089752, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (8982090089752, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (8982090089752, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (6331997014819, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (6331997014819, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (6331997014819, 'Οικονομία');

INSERT INTO book_category(isbn, category_name) VALUES (6848325114167, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (6848325114167, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (6723873435411, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (6723873435411, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (6723873435411, 'Παιδικά');

INSERT INTO book_category(isbn, category_name) VALUES (8298667821950, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (8298667821950, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (7711413737235, 'Παιδικά');

INSERT INTO book_category(isbn, category_name) VALUES (7711413737235, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (7711413737235, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (1568254810189, 'Παιδικά');

INSERT INTO book_category(isbn, category_name) VALUES (1568254810189, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (1568254810189, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (9109804213797, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (9109804213797, 'Παιδικά');

INSERT INTO book_category(isbn, category_name) VALUES (9109804213797, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (6688751513177, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (6688751513177, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (6688751513177, 'Πνευματική Ανάπτυξη');

INSERT INTO book_category(isbn, category_name) VALUES (4751001788808, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (4751001788808, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (4152806489920, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (4152806489920, 'Πνευματική Ανάπτυξη');

INSERT INTO book_category(isbn, category_name) VALUES (4152806489920, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (2012096842470, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (2012096842470, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (2012096842470, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (1889530462928, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (1889530462928, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (1889530462928, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (9737863198576, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (9737863198576, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (9737863198576, 'Πνευματική Ανάπτυξη');

INSERT INTO book_category(isbn, category_name) VALUES (2289945496584, 'Οικονομία');

INSERT INTO book_category(isbn, category_name) VALUES (2289945496584, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (2289945496584, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (8910950787911, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (8910950787911, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (1116606958982, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (1116606958982, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (5015118156484, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (5015118156484, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (3770947998401, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (3770947998401, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (3770947998401, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (4115250890401, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (4115250890401, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (4115250890401, 'Οικονομία');

INSERT INTO book_category(isbn, category_name) VALUES (8254238620165, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (8254238620165, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (4832966441647, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (4832966441647, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (1489895785488, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (1489895785488, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (3243125056920, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (3243125056920, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (4770340963387, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (4770340963387, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (4505048373798, 'Μαγειρική');

INSERT INTO book_category(isbn, category_name) VALUES (4505048373798, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (3348697188116, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (3348697188116, 'Παιδικά');

INSERT INTO book_category(isbn, category_name) VALUES (2400288317436, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (2400288317436, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (7450357055002, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (7450357055002, 'Παιδικά');

INSERT INTO book_category(isbn, category_name) VALUES (7450357055002, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (1458823165875, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (1458823165875, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (1458823165875, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (2268167135439, 'Οικονομία');

INSERT INTO book_category(isbn, category_name) VALUES (2268167135439, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (2268167135439, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (6762375278243, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (6762375278243, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (6762375278243, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (5508185951725, 'Παιδικά');

INSERT INTO book_category(isbn, category_name) VALUES (5508185951725, 'Πνευματική Ανάπτυξη');

INSERT INTO book_category(isbn, category_name) VALUES (5508185951725, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (9577651658527, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (9577651658527, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (4693874922830, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (4693874922830, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (3802096622413, 'Μαγειρική');

INSERT INTO book_category(isbn, category_name) VALUES (3802096622413, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (3802096622413, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (4929859987550, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (4929859987550, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (4929859987550, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (6931627909053, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (6931627909053, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (6931627909053, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (1810256525578, 'Οικονομία');

INSERT INTO book_category(isbn, category_name) VALUES (1810256525578, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (1999175221635, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (1999175221635, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (7434507091721, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (7434507091721, 'Μαγειρική');

INSERT INTO book_category(isbn, category_name) VALUES (5456429866755, 'Πνευματική Ανάπτυξη');

INSERT INTO book_category(isbn, category_name) VALUES (5456429866755, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (5456429866755, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (6871703830013, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (6871703830013, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (6871703830013, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (9862578231662, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (9862578231662, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (9862578231662, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (8132742901390, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (8132742901390, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (8626958072945, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (8626958072945, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (9354178882597, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (9354178882597, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (9354178882597, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (1488515868119, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (1488515868119, 'Μαγειρική');

INSERT INTO book_category(isbn, category_name) VALUES (9765654361715, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (9765654361715, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (7659489693711, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (7659489693711, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (7659489693711, 'Παιδικά');

INSERT INTO book_category(isbn, category_name) VALUES (8962836923420, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (8962836923420, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (8962836923420, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (1334143094508, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (1334143094508, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (5566444965150, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (5566444965150, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (5566444965150, 'Φωτογραφία');

INSERT INTO book_category(isbn, category_name) VALUES (8548363419878, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (8548363419878, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (3297437336773, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (3297437336773, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (8418630659564, 'Αυτοβελτίωση');

INSERT INTO book_category(isbn, category_name) VALUES (8418630659564, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (8521608397202, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (8521608397202, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (8521608397202, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (3578107963372, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (3578107963372, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (6350033594347, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (6350033594347, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (6350033594347, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (3182701383200, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (3182701383200, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (3261285399325, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (3261285399325, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (3261285399325, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (3193969717953, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (3193969717953, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (3193969717953, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (9993567451113, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (9993567451113, 'Περιπέτεια');

INSERT INTO book_category(isbn, category_name) VALUES (9993567451113, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (3618456023178, 'Ιστορία');

INSERT INTO book_category(isbn, category_name) VALUES (3618456023178, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (3618456023178, 'Παιδικά');

INSERT INTO book_category(isbn, category_name) VALUES (1430937623633, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (1430937623633, 'Παιδικά');

INSERT INTO book_category(isbn, category_name) VALUES (2349417521177, 'Επιστημονική Φαντασία');

INSERT INTO book_category(isbn, category_name) VALUES (2349417521177, 'Μυθιστόρημα');

INSERT INTO book_category(isbn, category_name) VALUES (6604819383267, 'Περιβάλλον');

INSERT INTO book_category(isbn, category_name) VALUES (6604819383267, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (4650969131516, 'Τέχνες');

INSERT INTO book_category(isbn, category_name) VALUES (4650969131516, 'Μαγειρική');

INSERT INTO book_category(isbn, category_name) VALUES (4650969131516, 'Τρόμου');

INSERT INTO book_category(isbn, category_name) VALUES (1347941499483, 'Λογοτεχνία');

INSERT INTO book_category(isbn, category_name) VALUES (1347941499483, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (4391229539277, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (4391229539277, 'Ταξίδια');

INSERT INTO book_category(isbn, category_name) VALUES (4391229539277, 'Βιογραφίες');

INSERT INTO book_category(isbn, category_name) VALUES (2131928463530, 'Ποίηση');

INSERT INTO book_category(isbn, category_name) VALUES (2131928463530, 'Δράμα');

INSERT INTO book_category(isbn, category_name) VALUES (2594664167353, 'Παιδικά');

INSERT INTO book_category(isbn, category_name) VALUES (2594664167353, 'Επιστήμη');

INSERT INTO book_category(isbn, category_name) VALUES (3925719614933, 'Διαχείριση χρόνου');

INSERT INTO book_category(isbn, category_name) VALUES (3925719614933, 'Περιβάλλον');



/*-------------------------------Borrow Inserts-------------------------------------------*/

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (135, 2, 1430937623633,'2022-5-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (24, 2, 8521608397202,'2022-10-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (51, 2, 6153360567012,'2022-2-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (115, 2, 4268627099896,'2022-12-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (68, 2, 9219034632769,'2022-2-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (150, 2, 4693874922830,'2022-6-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (68, 2, 8900757253020,'2022-10-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (115, 2, 6931627909053,'2022-7-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (115, 2, 9547811883165,'2022-5-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (29, 2, 3107335369872,'2022-8-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (101, 2, 5566444965150,'2022-1-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (89, 2, 5566444965150,'2022-2-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (153, 2, 4268627099896,'2022-4-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (24, 2, 9033221237235,'2022-2-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (24, 2, 4606566578861,'2022-3-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (135, 2, 9207742114175,'2022-5-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (91, 2, 3220123116607,'2022-10-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (115, 2, 6871703830013,'2022-9-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (59, 2, 2372413716794,'2022-6-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (135, 2, 9094793362769,'2022-7-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (135, 2, 8697261847388,'2022-11-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (118, 2, 1889530462928,'2022-3-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (135, 2, 5566444965150,'2022-12-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (165, 2, 6871703830013,'2022-11-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (51, 2, 1488515868119,'2022-9-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (118, 2, 6511646113812,'2022-7-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (29, 2, 3013463266893,'2022-10-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (135, 2, 3692740665327,'2022-1-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (59, 2, 2400288317436,'2022-8-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (91, 2, 7755898641996,'2022-10-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (165, 2, 1489895785488,'2022-11-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (150, 2, 6762375278243,'2022-9-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (150, 2, 9862578231662,'2022-9-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (29, 2, 8336473825612,'2022-9-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (29, 2, 9765654361715,'2022-8-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (115, 2, 6762375278243,'2022-11-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (165, 2, 4929859987550,'2022-10-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (135, 2, 6153360567012,'2022-6-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (68, 2, 7990244879027,'2022-8-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (91, 2, 8132742901390,'2022-11-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (68, 2, 9207742114175,'2022-7-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (118, 2, 4606566578861,'2022-11-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (115, 2, 6219856404541,'2022-6-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (153, 2, 8697261847388,'2022-7-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (24, 2, 6688751513177,'2022-11-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (89, 2, 9574109824068,'2022-1-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (91, 2, 2400288317436,'2022-6-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (59, 2, 9574109824068,'2022-8-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (51, 2, 1126812354700,'2022-4-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (59, 2, 9490109880272,'2022-7-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (150, 2, 1126812354700,'2022-12-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (51, 2, 1126812354700,'2022-8-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (118, 2, 4296522430758,'2022-3-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (165, 2, 3064009453430,'2022-6-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (153, 2, 3656018719947,'2022-12-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (89, 2, 9219034632769,'2022-1-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (51, 2, 6653159087817,'2022-3-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (51, 2, 5494724089011,'2022-5-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (89, 2, 9224583734754,'2022-3-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (51, 2, 8900757253020,'2022-7-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (135, 2, 4589910366138,'2022-8-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (153, 2, 9737863198576,'2022-1-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (68, 2, 3802096622413,'2022-8-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (135, 2, 9033221237235,'2022-7-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (101, 2, 5015118156484,'2022-11-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (118, 2, 5566444965150,'2022-8-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (115, 2, 3656018719947,'2022-6-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (91, 2, 4832966441647,'2022-10-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (51, 2, 3064009453430,'2022-11-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (89, 2, 7016908686537,'2022-3-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (89, 2, 4589910366138,'2022-9-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (115, 2, 9574109824068,'2022-10-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (59, 2, 2268167135439,'2022-8-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (89, 2, 9765654361715,'2022-1-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (91, 2, 6931627909053,'2022-9-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (150, 2, 1126812354700,'2022-2-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (165, 2, 2268167135439,'2022-10-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (118, 2, 1334143094508,'2022-5-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (59, 2, 6653159087817,'2022-6-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (51, 2, 6511646113812,'2022-9-4' , TRUE);


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (93, 3, 6688751513177,'2022-6-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (129, 3, 9224583734754,'2022-3-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (129, 3, 9812685120769,'2022-12-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (71, 3, 1430937623633,'2022-9-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (96, 3, 5508185951725,'2022-2-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (93, 3, 6145925892422,'2022-5-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (73, 3, 4606566578861,'2022-12-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (103, 3, 4440304732510,'2022-2-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (93, 3, 5566444965150,'2022-12-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (84, 3, 6331997014819,'2022-6-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (112, 3, 6653159087817,'2022-12-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (105, 3, 2972451307144,'2022-5-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (37, 3, 7659489693711,'2022-4-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (71, 3, 9028150382753,'2022-6-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (37, 3, 4440304732510,'2022-12-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (73, 3, 4440304732510,'2022-8-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (127, 3, 2984578966862,'2022-4-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (105, 3, 9207742114175,'2022-11-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (84, 3, 9993567451113,'2022-4-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (105, 3, 6027037313846,'2022-3-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (105, 3, 8766336552641,'2022-5-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (37, 3, 3064009453430,'2022-8-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (73, 3, 4751001788808,'2022-3-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (145, 3, 3064009453430,'2022-2-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (112, 3, 9858765974982,'2022-2-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (155, 3, 2594664167353,'2022-10-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (138, 3, 5015118156484,'2022-1-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (138, 3, 4785138356950,'2022-12-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (105, 3, 3925719614933,'2022-2-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (145, 3, 1347941499483,'2022-12-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (105, 3, 7567169927335,'2022-9-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (71, 3, 8298667821950,'2022-9-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (37, 3, 3243125056920,'2022-3-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (96, 3, 9567718119779,'2022-5-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (129, 3, 9109804213797,'2022-9-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (129, 3, 1334143094508,'2022-2-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (129, 3, 7158670919866,'2022-4-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (73, 3, 3193969717953,'2022-4-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (112, 3, 1297436011637,'2022-5-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (71, 3, 6629370975730,'2022-11-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (113, 3, 1306445796635,'2022-5-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (84, 3, 9028150382753,'2022-6-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (127, 3, 7214248851312,'2022-2-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (73, 3, 9224583734754,'2022-4-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (96, 3, 5494724089011,'2022-1-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (155, 3, 6027037313846,'2022-7-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (78, 3, 7016908686537,'2022-12-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (103, 3, 9207742114175,'2022-3-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (113, 3, 2433916935501,'2022-5-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (155, 3, 4869870691198,'2022-1-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (129, 3, 9028150382753,'2022-3-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (76, 3, 4454807324148,'2022-3-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (73, 3, 2349417521177,'2022-8-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (114, 3, 8418630659564,'2022-3-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (155, 3, 7792489045395,'2022-4-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (73, 3, 5015118156484,'2022-6-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (103, 3, 4140951777695,'2022-3-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (114, 3, 3013463266893,'2022-5-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (96, 3, 1153005436685,'2022-4-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (127, 3, 4751001788808,'2022-6-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (93, 3, 9094793362769,'2022-8-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (122, 3, 9858765974982,'2022-12-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (78, 3, 6331997014819,'2022-12-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (155, 3, 2349417521177,'2022-5-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (145, 3, 6027037313846,'2022-10-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (155, 3, 2433916935501,'2022-3-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (127, 3, 9765654361715,'2022-8-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (103, 3, 3064009453430,'2022-10-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (78, 3, 6688751513177,'2022-3-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (112, 3, 3925719614933,'2022-12-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (113, 3, 6331997014819,'2022-11-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (162, 3, 6688751513177,'2022-12-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (96, 3, 5494724089011,'2022-5-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (122, 3, 3193969717953,'2022-1-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (122, 3, 1999175221635,'2022-7-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (114, 3, 6871703830013,'2022-10-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (129, 3, 5508185951725,'2022-1-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (71, 3, 1999175221635,'2022-2-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (96, 3, 3578107963372,'2022-3-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (96, 3, 8626958072945,'2022-1-9' , TRUE);


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (161, 4, 7990244879027,'2022-6-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (161, 4, 4946671575029,'2022-4-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (77, 4, 7792489045395,'2022-7-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (26, 4, 8766336552641,'2022-10-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (33, 4, 9219034632769,'2022-5-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (139, 4, 1347941499483,'2022-7-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (9, 4, 3127865758618,'2022-11-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (63, 4, 6653159087817,'2022-8-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (133, 4, 6632716926317,'2022-1-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (140, 4, 3079396977330,'2022-12-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (77, 4, 8766336552641,'2022-6-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (159, 4, 4152806489920,'2022-2-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (58, 4, 4858225663620,'2022-2-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (39, 4, 9739130749705,'2022-10-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (86, 4, 9207742114175,'2022-8-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (161, 4, 8910950787911,'2022-2-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (58, 4, 6848325114167,'2022-9-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (86, 4, 1841363972930,'2022-5-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (137, 4, 9574109824068,'2022-6-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (144, 4, 7605024846753,'2022-7-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (147, 4, 4751001788808,'2022-7-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (23, 4, 8132742901390,'2022-2-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (137, 4, 9812685120769,'2022-10-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (144, 4, 9109804213797,'2022-7-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (86, 4, 8910950787911,'2022-10-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (123, 4, 6682660543221,'2022-5-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (139, 4, 4751001788808,'2022-10-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (30, 4, 9574109824068,'2022-11-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (116, 4, 9354178882597,'2022-11-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (123, 4, 6219856404541,'2022-7-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (139, 4, 6452966853203,'2022-1-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (87, 4, 8341696933214,'2022-1-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (161, 4, 6145925892422,'2022-1-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (60, 4, 7450357055002,'2022-4-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (30, 4, 7605024846753,'2022-5-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (123, 4, 3079396977330,'2022-1-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (55, 4, 9324118711655,'2022-11-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (33, 4, 1347941499483,'2022-8-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (161, 4, 2594664167353,'2022-6-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (133, 4, 6145925892422,'2022-2-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (26, 4, 9567718119779,'2022-3-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (58, 4, 8341696933214,'2022-12-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (60, 4, 4296522430758,'2022-6-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (98, 4, 1430937623633,'2022-10-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (87, 4, 1884752033664,'2022-12-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (9, 4, 9812685120769,'2022-10-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (63, 4, 8264725327153,'2022-4-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (63, 4, 9567718119779,'2022-8-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (144, 4, 4140951777695,'2022-12-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (33, 4, 2833210167593,'2022-10-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (159, 4, 9737863198576,'2022-1-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (60, 4, 4505048373798,'2022-7-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (63, 4, 8418630659564,'2022-9-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (116, 4, 1999175221635,'2022-8-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (55, 4, 8132742901390,'2022-5-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (23, 4, 9109804213797,'2022-10-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (39, 4, 7016908686537,'2022-10-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (55, 4, 4296522430758,'2022-8-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (111, 4, 3297437336773,'2022-6-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (139, 4, 8910950787911,'2022-6-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (9, 4, 5517373755374,'2022-7-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (140, 4, 4770340963387,'2022-5-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (63, 4, 6219856404541,'2022-7-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (137, 4, 8766336552641,'2022-7-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (111, 4, 9109804213797,'2022-10-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (159, 4, 4751001788808,'2022-6-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (98, 4, 1292103779027,'2022-9-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (39, 4, 7438096765267,'2022-12-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (98, 4, 1347941499483,'2022-2-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (55, 4, 4589910366138,'2022-6-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (60, 4, 1999175221635,'2022-12-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (132, 4, 3127865758618,'2022-4-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (55, 4, 3756980224276,'2022-8-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (77, 4, 9028150382753,'2022-4-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (159, 4, 4946671575029,'2022-5-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (9, 4, 3925719614933,'2022-8-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (159, 4, 8910950787911,'2022-7-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (123, 4, 7438096765267,'2022-10-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (23, 4, 4505048373798,'2022-11-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (86, 4, 6452966853203,'2022-4-4' , TRUE);


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (106, 5, 7438096765267,'2022-12-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (48, 5, 7561444116695,'2022-7-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (119, 5, 3207473542944,'2022-8-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (167, 5, 1798300176342,'2022-4-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (158, 5, 2167684398452,'2022-4-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (166, 5, 6723873435411,'2022-4-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (158, 5, 3064009453430,'2022-6-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (119, 5, 9567718119779,'2022-8-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (156, 5, 6632716926317,'2022-3-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (109, 5, 3243125056920,'2022-10-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (130, 5, 7711413737235,'2022-11-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (136, 5, 6145925892422,'2022-6-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (107, 5, 9811917595601,'2022-11-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (124, 5, 4946671575029,'2022-7-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (121, 5, 9812685120769,'2022-8-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (158, 5, 9354178882597,'2022-1-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (149, 5, 9109804213797,'2022-12-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (85, 5, 8298667821950,'2022-3-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (79, 5, 4268627099896,'2022-11-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (79, 5, 4785138356950,'2022-3-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (79, 5, 8766336552641,'2022-7-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (157, 5, 3243125056920,'2022-6-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (130, 5, 5494724089011,'2022-4-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (28, 5, 9547811883165,'2022-2-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (44, 5, 3207473542944,'2022-5-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (117, 5, 2268167135439,'2022-3-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (106, 5, 8962836923420,'2022-8-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (130, 5, 9812685120769,'2022-1-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (167, 5, 2833210167593,'2022-11-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (124, 5, 3618456023178,'2022-12-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (79, 5, 2372413716794,'2022-10-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (166, 5, 4268627099896,'2022-4-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (141, 5, 2268167135439,'2022-6-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (124, 5, 9109804213797,'2022-10-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (28, 5, 3578107963372,'2022-10-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (166, 5, 4650969131516,'2022-10-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (43, 5, 2289945496584,'2022-9-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (90, 5, 7561444116695,'2022-12-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (109, 5, 1297436011637,'2022-12-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (167, 5, 4693874922830,'2022-1-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (152, 5, 1889530462928,'2022-10-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (156, 5, 9811917595601,'2022-3-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (163, 5, 8132742901390,'2022-7-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (106, 5, 6762375278243,'2022-5-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (158, 5, 1889530462928,'2022-8-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (119, 5, 3261285399325,'2022-7-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (69, 5, 6350033594347,'2022-11-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (44, 5, 4454807324148,'2022-4-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (54, 5, 9882758923892,'2022-11-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (109, 5, 1798300176342,'2022-9-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (20, 5, 2903278609230,'2022-2-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (80, 5, 6350033594347,'2022-7-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (117, 5, 8132742901390,'2022-11-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (107, 5, 3013463266893,'2022-1-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (36, 5, 7561444116695,'2022-1-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (21, 5, 7990244879027,'2022-10-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (90, 5, 7711413737235,'2022-10-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (158, 5, 9207742114175,'2022-3-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (107, 5, 5494724089011,'2022-12-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (117, 5, 3182701383200,'2022-7-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (124, 5, 9739130749705,'2022-5-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (166, 5, 1306445796635,'2022-6-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (124, 5, 1116606958982,'2022-2-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (28, 5, 7561444116695,'2022-6-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (79, 5, 6350033594347,'2022-9-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (21, 5, 4440304732510,'2022-10-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (80, 5, 1297436011637,'2022-1-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (69, 5, 9490109880272,'2022-11-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (54, 5, 3656018719947,'2022-11-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (85, 5, 1334143094508,'2022-11-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (163, 5, 6688751513177,'2022-12-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (156, 5, 4173279492495,'2022-3-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (52, 5, 7990244879027,'2022-5-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (163, 5, 9354178882597,'2022-1-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (141, 5, 3618456023178,'2022-3-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (36, 5, 6331997014819,'2022-6-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (156, 5, 9007144409202,'2022-10-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (69, 5, 4268627099896,'2022-1-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (157, 5, 4440304732510,'2022-10-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (44, 5, 1297436011637,'2022-2-11' , TRUE);


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (110, 6, 1999175221635,'2022-10-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (67, 6, 7659489693711,'2022-9-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (100, 6, 1489895785488,'2022-7-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (100, 6, 3193969717953,'2022-7-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (81, 6, 6511646113812,'2022-3-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (57, 6, 4929859987550,'2022-7-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (27, 6, 7567169927335,'2022-1-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (100, 6, 3261285399325,'2022-9-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (120, 6, 1347941499483,'2022-1-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (70, 6, 1306445796635,'2022-4-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (41, 6, 5566444965150,'2022-1-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (14, 6, 7659489693711,'2022-10-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (65, 6, 7281413357185,'2022-10-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (31, 6, 3618456023178,'2022-12-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (49, 6, 7659489693711,'2022-2-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (74, 6, 8254238620165,'2022-12-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (22, 6, 9739130749705,'2022-8-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (22, 6, 8626958072945,'2022-7-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (49, 6, 3127865758618,'2022-1-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (65, 6, 5183409819690,'2022-3-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (27, 6, 3618456023178,'2022-1-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (49, 6, 9033221237235,'2022-8-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (46, 6, 9406856102132,'2022-9-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (110, 6, 9858765974982,'2022-10-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (49, 6, 2364347149874,'2022-4-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (120, 6, 3578107963372,'2022-11-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (74, 6, 1212148607497,'2022-1-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (110, 6, 9490109880272,'2022-4-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (31, 6, 6350033594347,'2022-12-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (49, 6, 2167684398452,'2022-1-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (134, 6, 2372413716794,'2022-7-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (81, 6, 9007144409202,'2022-6-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (22, 6, 6219856404541,'2022-6-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (70, 6, 4089950673159,'2022-5-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (88, 6, 5880267763753,'2022-9-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (120, 6, 9033221237235,'2022-10-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (32, 6, 7711413737235,'2022-11-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (134, 6, 9993567451113,'2022-3-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (134, 6, 9739130749705,'2022-10-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (64, 6, 4152806489920,'2022-8-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (62, 6, 9033221237235,'2022-9-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (42, 6, 6848325114167,'2022-3-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (41, 6, 4832966441647,'2022-8-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (110, 6, 9567718119779,'2022-9-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (70, 6, 6762375278243,'2022-10-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (75, 6, 2131928463530,'2022-12-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (70, 6, 7792489045395,'2022-6-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (74, 6, 1999173972484,'2022-12-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (67, 6, 8697261847388,'2022-4-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (70, 6, 4454807324148,'2022-5-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (64, 6, 1116606958982,'2022-1-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (100, 6, 9406856102132,'2022-6-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (25, 6, 4268627099896,'2022-1-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (110, 6, 6688751513177,'2022-2-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (31, 6, 2833210167593,'2022-10-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (134, 6, 5494724089011,'2022-6-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (27, 6, 8626958072945,'2022-3-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (62, 6, 7792489045395,'2022-4-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (41, 6, 9765654361715,'2022-7-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (57, 6, 5517373755374,'2022-8-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (27, 6, 9219034632769,'2022-4-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (100, 6, 7990244879027,'2022-12-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (53, 6, 2167684398452,'2022-2-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (154, 6, 9109804213797,'2022-6-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (66, 6, 1489895785488,'2022-1-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (110, 6, 1116606958982,'2022-7-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (53, 6, 7659489693711,'2022-2-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (110, 6, 9737863198576,'2022-2-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (41, 6, 1116606958982,'2022-2-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (46, 6, 2372413716794,'2022-1-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (25, 6, 2833210167593,'2022-5-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (41, 6, 8521608397202,'2022-8-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (62, 6, 8254238620165,'2022-4-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (134, 6, 3261285399325,'2022-12-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (57, 6, 2372413716794,'2022-8-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (31, 6, 2131928463530,'2022-5-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (88, 6, 9109804213797,'2022-12-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (142, 6, 7990244879027,'2022-10-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (57, 6, 5494724089011,'2022-1-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (42, 6, 4391229539277,'2022-9-7' , TRUE);


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (13, 7, 4440304732510,'2022-3-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (131, 7, 3174778329473,'2022-8-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (82, 7, 4440304732510,'2022-8-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (164, 7, 3636299678055,'2022-11-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (47, 7, 9739130749705,'2022-5-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (82, 7, 9739130749705,'2022-8-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (45, 7, 8697261847388,'2022-4-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (94, 7, 9033221237235,'2022-5-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (148, 7, 1074560664703,'2022-12-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (17, 7, 5880267763753,'2022-3-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (82, 7, 9812685120769,'2022-3-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (102, 7, 3174778329473,'2022-12-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (128, 7, 9490109880272,'2022-11-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (131, 7, 5494724089011,'2022-8-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (11, 7, 4296522430758,'2022-7-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (38, 7, 9574109824068,'2022-7-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (125, 7, 9574109824068,'2022-1-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (160, 7, 1841363972930,'2022-5-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (35, 7, 2114657248842,'2022-6-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (82, 7, 2833210167593,'2022-6-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (148, 7, 1292103779027,'2022-9-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (45, 7, 8498752694348,'2022-1-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (160, 7, 9028150382753,'2022-8-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (40, 7, 6219856404541,'2022-6-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (11, 7, 6219856404541,'2022-4-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (125, 7, 2396929730247,'2022-10-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (15, 7, 9490109880272,'2022-6-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (34, 7, 3656018719947,'2022-7-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (82, 7, 7438096765267,'2022-10-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (15, 7, 2984578966862,'2022-6-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (40, 7, 4785138356950,'2022-10-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (45, 7, 9812685120769,'2022-1-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (13, 7, 6653159087817,'2022-9-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (72, 7, 9547811883165,'2022-8-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (148, 7, 2167684398452,'2022-4-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (35, 7, 1292103779027,'2022-3-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (128, 7, 4869870691198,'2022-10-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (17, 7, 1486540055135,'2022-9-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (47, 7, 1798300176342,'2022-1-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (131, 7, 3207473542944,'2022-11-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (148, 7, 9812685120769,'2022-3-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (61, 7, 6456794880303,'2022-9-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (131, 7, 3636299678055,'2022-3-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (40, 7, 1126812354700,'2022-11-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (151, 7, 2114657248842,'2022-1-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (34, 7, 5880267763753,'2022-1-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (143, 7, 4869870691198,'2022-1-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (47, 7, 9028150382753,'2022-8-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (11, 7, 1453031648935,'2022-3-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (82, 7, 7158670919866,'2022-10-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (45, 7, 6682660543221,'2022-12-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (13, 7, 9207742114175,'2022-3-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (151, 7, 7567169927335,'2022-2-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (11, 7, 9224583734754,'2022-6-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (47, 7, 1453031648935,'2022-12-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (131, 7, 9224583734754,'2022-6-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (11, 7, 7605024846753,'2022-3-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (125, 7, 7367371304098,'2022-4-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (148, 7, 6145925892422,'2022-9-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (164, 7, 2984578966862,'2022-8-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (11, 7, 8498752694348,'2022-1-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (34, 7, 7755898641996,'2022-6-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (108, 7, 4440304732510,'2022-3-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (45, 7, 4869870691198,'2022-11-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (47, 7, 4140951777695,'2022-6-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (61, 7, 8498752694348,'2022-6-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (94, 7, 3656018719947,'2022-8-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (102, 7, 9574109824068,'2022-12-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (99, 7, 4268627099896,'2022-12-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (104, 7, 8697261847388,'2022-4-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (102, 7, 1798300176342,'2022-3-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (94, 7, 1486540055135,'2022-7-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (40, 7, 4785138356950,'2022-7-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (72, 7, 8336473825612,'2022-5-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (17, 7, 7755898641996,'2022-1-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (104, 7, 2903278609230,'2022-11-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (160, 7, 1074560664703,'2022-3-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (104, 7, 6153360567012,'2022-9-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (83, 7, 4606566578861,'2022-10-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (128, 7, 5880267763753,'2022-10-26' , TRUE);


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (165, 2, 1889530462928,'2023-04-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (68, 2, 9219034632769,'2023-04-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (165, 2, 8521608397202,'2023-02-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (91, 2, 6350033594347,'2023-04-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (68, 2, 9324118711655,'2023-03-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (135, 2, 1234567890124,'2023-01-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (101, 2, 8982090089752,'2023-04-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (150, 2, 4693874922830,'2023-03-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (24, 2, 6153360567012,'2023-02-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (68, 2, 9862578231662,'2023-04-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (51, 2, 6511646113812,'2023-04-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (150, 2, 2268167135439,'2023-02-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (24, 2, 3013463266893,'2023-03-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (115, 2, 3756980224276,'2023-03-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (68, 2, 6653159087817,'2023-02-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (101, 2, 7990244879027,'2023-02-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (115, 2, 3348697188116,'2023-03-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (24, 2, 9765654361715,'2023-02-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (24, 2, 6219856404541,'2023-04-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (165, 2, 2372413716794,'2023-01-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (89, 2, 1798300176342,'2023-01-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (150, 2, 9094793362769,'2023-01-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (59, 2, 3174778329473,'2023-03-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (150, 2, 3770947998401,'2023-04-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (91, 2, 7367371304098,'2023-04-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (29, 2, 6931627909053,'2023-01-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (150, 2, 1234567890124,'2023-04-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (153, 2, 2372413716794,'2023-01-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (118, 2, 6219856404541,'2023-04-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (89, 2, 2145897665884,'2023-02-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (59, 2, 9324118711655,'2023-02-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (165, 2, 9547811883165,'2023-02-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (135, 2, 5880267763753,'2023-03-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (91, 2, 2012096842470,'2023-02-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (135, 2, 9574109824068,'2023-01-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (24, 2, 9574109824068,'2023-01-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (153, 2, 3174778329473,'2023-04-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (24, 2, 9993567451113,'2023-01-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (59, 2, 1889530462928,'2023-04-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (150, 2, 9547811883165,'2023-02-8' , TRUE);


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (113, 3, 6145925892422,'2023-01-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (155, 3, 1347941499483,'2023-02-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (73, 3, 1453031648935,'2023-03-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (103, 3, 6219856404541,'2023-01-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (103, 3, 4770340963387,'2023-04-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (96, 3, 7158670919866,'2023-02-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (84, 3, 3193969717953,'2023-01-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (127, 3, 4440304732510,'2023-03-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (76, 3, 9033221237235,'2023-02-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (105, 3, 5566444965150,'2023-01-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (138, 3, 2364347149874,'2023-04-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (127, 3, 1347941499483,'2023-01-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (103, 3, 2145897665884,'2023-03-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (73, 3, 2167684398452,'2023-03-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (93, 3, 6653159087817,'2023-02-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (93, 3, 3243125056920,'2023-01-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (105, 3, 9324118711655,'2023-03-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (96, 3, 4751001788808,'2023-01-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (138, 3, 3656018719947,'2023-02-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (78, 3, 4869870691198,'2023-01-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (129, 3, 2145897665884,'2023-04-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (93, 3, 2833210167593,'2023-02-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (103, 3, 9109804213797,'2023-02-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (155, 3, 6871703830013,'2023-01-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (84, 3, 9324118711655,'2023-01-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (122, 3, 9094793362769,'2023-04-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (145, 3, 1884752033664,'2023-02-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (114, 3, 7214248851312,'2023-03-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (155, 3, 6331997014819,'2023-04-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (162, 3, 4751001788808,'2023-01-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (112, 3, 5015118156484,'2023-01-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (71, 3, 8132742901390,'2023-02-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (114, 3, 2372413716794,'2023-04-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (105, 3, 7567169927335,'2023-02-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (103, 3, 5508185951725,'2023-01-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (96, 3, 9224583734754,'2023-01-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (162, 3, 7214248851312,'2023-04-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (93, 3, 1999175221635,'2023-03-8' , TRUE);


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (161, 4, 7792489045395,'2023-01-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (123, 4, 7205097535074,'2023-01-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (159, 4, 1884752033664,'2023-04-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (98, 4, 7281413357185,'2023-02-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (23, 4, 9219034632769,'2023-04-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (33, 4, 9993567451113,'2023-01-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (116, 4, 7990244879027,'2023-01-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (55, 4, 3656018719947,'2023-04-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (132, 4, 3107335369872,'2023-01-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (26, 4, 6682660543221,'2023-03-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (30, 4, 3636299678055,'2023-04-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (23, 4, 1568254810189,'2023-04-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (63, 4, 4140951777695,'2023-04-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (123, 4, 7016908686537,'2023-04-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (9, 4, 6145925892422,'2023-03-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (98, 4, 6931627909053,'2023-01-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (133, 4, 6762375278243,'2023-02-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (147, 4, 3174778329473,'2023-02-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (86, 4, 8766336552641,'2023-03-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (98, 4, 7438096765267,'2023-01-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (139, 4, 8132742901390,'2023-01-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (33, 4, 1889530462928,'2023-01-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (30, 4, 2833210167593,'2023-02-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (137, 4, 4268627099896,'2023-02-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (159, 4, 2364347149874,'2023-04-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (87, 4, 8766336552641,'2023-02-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (9, 4, 9207742114175,'2023-02-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (23, 4, 3618456023178,'2023-01-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (87, 4, 8132742901390,'2023-02-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (87, 4, 8910950787911,'2023-02-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (161, 4, 9862578231662,'2023-02-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (60, 4, 2364347149874,'2023-01-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (63, 4, 4751001788808,'2023-04-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (116, 4, 1334143094508,'2023-01-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (63, 4, 9882758923892,'2023-02-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (161, 4, 6145925892422,'2023-04-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (144, 4, 1430937623633,'2023-02-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (58, 4, 4296522430758,'2023-02-3' , TRUE);


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (69, 5, 1889530462928,'2023-04-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (106, 5, 3618456023178,'2023-04-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (21, 5, 6682660543221,'2023-03-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (158, 5, 2984578966862,'2023-02-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (119, 5, 8962836923420,'2023-04-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (152, 5, 1884752033664,'2023-04-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (50, 5, 4505048373798,'2023-04-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (109, 5, 4693874922830,'2023-02-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (121, 5, 3770947998401,'2023-01-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (90, 5, 3127865758618,'2023-02-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (119, 5, 9739130749705,'2023-02-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (21, 5, 9739130749705,'2023-04-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (119, 5, 3064009453430,'2023-03-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (52, 5, 7434507091721,'2023-01-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (106, 5, 1334143094508,'2023-04-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (36, 5, 3127865758618,'2023-04-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (149, 5, 7561444116695,'2023-01-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (157, 5, 1841363972930,'2023-03-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (152, 5, 2984578966862,'2023-02-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (156, 5, 9207742114175,'2023-02-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (52, 5, 7434507091721,'2023-01-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (130, 5, 6511646113812,'2023-01-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (43, 5, 7990244879027,'2023-04-22' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (107, 5, 7561444116695,'2023-03-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (158, 5, 6604819383267,'2023-01-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (50, 5, 8626958072945,'2023-01-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (109, 5, 2114657248842,'2023-01-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (20, 5, 9490109880272,'2023-02-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (90, 5, 7711413737235,'2023-04-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (28, 5, 6350033594347,'2023-02-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (90, 5, 1841363972930,'2023-02-10' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (130, 5, 1334143094508,'2023-04-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (121, 5, 3243125056920,'2023-01-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (152, 5, 3802096622413,'2023-04-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (48, 5, 2594664167353,'2023-04-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (158, 5, 6688751513177,'2023-02-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (106, 5, 8910950787911,'2023-04-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (50, 5, 4454807324148,'2023-01-10' , TRUE);


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (64, 6, 9406856102132,'2023-02-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (42, 6, 9765654361715,'2023-02-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (62, 6, 5456429866755,'2023-02-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (66, 6, 4391229539277,'2023-03-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (31, 6, 4268627099896,'2023-01-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (64, 6, 8264725327153,'2023-04-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (42, 6, 6511646113812,'2023-03-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (25, 6, 3064009453430,'2023-04-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (88, 6, 8264725327153,'2023-01-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (64, 6, 1297436011637,'2023-02-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (88, 6, 1297436011637,'2023-02-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (88, 6, 2131928463530,'2023-03-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (70, 6, 7811720330252,'2023-03-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (81, 6, 6287708802067,'2023-04-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (53, 6, 6848325114167,'2023-03-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (31, 6, 4832966441647,'2023-01-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (25, 6, 3127865758618,'2023-03-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (97, 6, 5880267763753,'2023-04-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (88, 6, 9109804213797,'2023-03-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (97, 6, 2972451307144,'2023-01-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (49, 6, 2167684398452,'2023-02-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (88, 6, 8697261847388,'2023-03-19' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (97, 6, 9882758923892,'2023-01-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (70, 6, 9882758923892,'2023-03-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (134, 6, 1884752033664,'2023-04-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (88, 6, 4454807324148,'2023-02-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (53, 6, 9033221237235,'2023-03-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (14, 6, 6511646113812,'2023-04-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (110, 6, 1153005436685,'2023-04-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (57, 6, 3207473542944,'2023-01-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (32, 6, 1153005436685,'2023-01-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (49, 6, 9406856102132,'2023-01-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (134, 6, 3578107963372,'2023-03-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (97, 6, 8962836923420,'2023-02-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (57, 6, 6629370975730,'2023-04-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (22, 6, 3261285399325,'2023-01-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (25, 6, 2833210167593,'2023-04-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (110, 6, 1568254810189,'2023-01-2' , TRUE);


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (151, 7, 3692740665327,'2023-02-4' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (164, 7, 1212148607497,'2023-04-6' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (35, 7, 9490109880272,'2023-03-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (160, 7, 9207742114175,'2023-03-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (99, 7, 8341696933214,'2023-01-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (104, 7, 6653159087817,'2023-03-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (35, 7, 3692740665327,'2023-01-12' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (143, 7, 2903278609230,'2023-04-24' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (45, 7, 6682660543221,'2023-02-21' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (148, 7, 1153005436685,'2023-04-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (35, 7, 6682660543221,'2023-03-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (38, 7, 3127865758618,'2023-04-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (146, 7, 6653159087817,'2023-02-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (164, 7, 6287708802067,'2023-03-28' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (160, 7, 6629370975730,'2023-03-2' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (92, 7, 9882758923892,'2023-03-15' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (35, 7, 9207742114175,'2023-02-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (102, 7, 7755898641996,'2023-01-8' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (38, 7, 9858765974982,'2023-04-11' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (151, 7, 9224583734754,'2023-04-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (148, 7, 5880267763753,'2023-03-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (151, 7, 9207742114175,'2023-04-13' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (131, 7, 1884752033664,'2023-03-16' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (40, 7, 5880267763753,'2023-01-7' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (125, 7, 9882758923892,'2023-02-1' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (148, 7, 1999173972484,'2023-04-26' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (40, 7, 8341696933214,'2023-03-18' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (35, 7, 1297436011637,'2023-03-5' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (83, 7, 2972451307144,'2023-04-20' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (38, 7, 6027037313846,'2023-04-25' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (148, 7, 4440304732510,'2023-04-14' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (35, 7, 9491414035477,'2023-02-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (104, 7, 9028150382753,'2023-04-23' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (47, 7, 6153360567012,'2023-01-3' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (99, 7, 1297436011637,'2023-04-17' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (13, 7, 7990244879027,'2023-03-27' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (38, 7, 6629370975730,'2023-03-9' , TRUE);

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date, returned) VALUES (131, 7, 7281413357185,'2023-02-8' , TRUE);


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (24, 2, 2145897665884,'2023-05-1');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (153, 2, 4832966441647,'2023-05-9');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (51, 2, 5494724089011,'2023-05-22');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (150, 2, 5880267763753,'2023-05-21');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (68, 2, 7755898641996,'2023-05-31');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (89, 2, 8521608397202,'2023-06-03');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (150, 2, 4946671575029,'2023-05-30');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (150, 2, 4929859987550,'2023-05-13');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (165, 2, 9858765974982,'2023-05-31');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (118, 2, 9993567451113,'2023-05-18');


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (113, 3, 1334143094508,'2023-05-8');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (162, 3, 7792489045395,'2023-05-2');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (37, 3, 1212148607497,'2023-05-10');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (93, 3, 2145897665884,'2023-05-21');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (78, 3, 9567718119779,'2023-05-11');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (145, 3, 6871703830013,'2023-05-1');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (162, 3, 9811917595601,'2023-05-27');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (114, 3, 8418630659564,'2023-05-2');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (113, 3, 9094793362769,'2023-05-24');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (145, 3, 2349417521177,'2023-05-16');


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (123, 4, 7755898641996,'2023-05-13');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (123, 4, 5517373755374,'2023-05-31');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (140, 4, 2289945496584,'2023-05-30');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (144, 4, 6762375278243,'2023-05-7');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (9, 4, 8962836923420,'2023-05-9');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (140, 4, 9028150382753,'2023-05-1');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (87, 4, 3348697188116,'2023-05-21');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (9, 4, 9207742114175,'2023-05-31');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (30, 4, 4858225663620,'2023-05-9');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (123, 4, 1347941499483,'2023-05-17');


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (21, 5, 1841363972930,'2023-05-14');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (50, 5, 7561444116695,'2023-05-13');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (36, 5, 3802096622413,'2023-05-30');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (130, 5, 3064009453430,'2023-05-3');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (36, 5, 3802096622413,'2023-05-22');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (166, 5, 1116606958982,'2023-05-24');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (117, 5, 3578107963372,'2023-05-18');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (28, 5, 2289945496584,'2023-05-7');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (136, 5, 1999175221635,'2023-05-24');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (43, 5, 9765654361715,'2023-05-7');


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (42, 6, 3220123116607,'2023-05-19');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (53, 6, 6219856404541,'2023-05-7');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (110, 6, 5517373755374,'2023-05-12');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (75, 6, 8548363419878,'2023-05-9');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (53, 6, 8910950787911,'2023-05-19');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (88, 6, 6350033594347,'2023-05-5');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (22, 6, 3578107963372,'2023-05-17');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (97, 6, 3220123116607,'2023-05-25');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (154, 6, 9354178882597,'2023-05-16');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (56, 6, 1126812354700,'2023-05-24');


INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (15, 7, 9028150382753,'2023-05-20');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (102, 7, 2972451307144,'2023-05-24');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (15, 7, 7214248851312,'2023-05-27');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (83, 7, 5880267763753,'2023-05-8');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (72, 7, 8341696933214,'2023-05-7');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (94, 7, 3220123116607,'2023-05-19');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (94, 7, 4785138356950,'2023-05-10');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (126, 7, 4869870691198,'2023-05-22');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (143, 7, 4606566578861,'2023-05-2');

INSERT INTO borrow (user_id, admin_id, isbn, borrow_date) VALUES (108, 7, 6653159087817,'2023-05-16');



/*-------------------------------Reservation Inserts--------------------------------------*/

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (29, 3182701383200,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (29, 4268627099896,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (91, 9491414035477,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (135, 9993567451113,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (59, 3064009453430,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (68, 7434507091721,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (115, 4832966441647,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (89, 9224583734754,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (89, 6153360567012,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (51, 7755898641996,'2023-06-05');


INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (138, 3297437336773,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (71, 6287708802067,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (95, 3064009453430,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (155, 7567169927335,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (127, 2984578966862,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (127, 2145897665884,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (112, 4440304732510,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (73, 9224583734754,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (71, 9858765974982,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (112, 2984578966862,'2023-06-05');


INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (133, 9219034632769,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (60, 3925719614933,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (63, 9993567451113,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (63, 1486540055135,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (140, 9207742114175,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (98, 6848325114167,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (116, 1999175221635,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (55, 1486540055135,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (98, 9033221237235,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (58, 9109804213797,'2023-06-05');


INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (157, 1116606958982,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (106, 1884752033664,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (124, 3802096622413,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (157, 5456429866755,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (48, 6762375278243,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (48, 7811720330252,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (107, 3656018719947,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (80, 4650969131516,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (54, 9007144409202,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (107, 6723873435411,'2023-06-05');


INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (134, 6653159087817,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (70, 9207742114175,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (74, 6762375278243,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (65, 2372413716794,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (74, 6350033594347,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (100, 4391229539277,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (57, 1297436011637,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (100, 1999173972484,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (41, 8910950787911,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (70, 3064009453430,'2023-06-05');


INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (38, 3127865758618,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (17, 4173279492495,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (40, 9207742114175,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (94, 4785138356950,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (160, 4606566578861,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (38, 7367371304098,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (125, 9406856102132,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (92, 3064009453430,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (40, 9094793362769,'2023-06-05');

INSERT INTO reservation (user_id, isbn, reservation_date) VALUES (92, 7438096765267,'2023-06-05');



/*------------------------------- Review Inserts------------------------------------------*/

INSERT INTO review(likert, isbn, user_id) VALUES(4, 1430937623633, 135);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 4268627099896, 115);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(2, 8900757253020, 68, FALSE);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(4, 3107335369872, 29, FALSE);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 4268627099896, 153);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 9207742114175, 135);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(1, 2372413716794, 59, FALSE);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(4, 1889530462928, 118, FALSE);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 1488515868119, 51);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 3692740665327, 135);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 1489895785488, 165);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(4, 8336473825612, 29, FALSE);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 4929859987550, 165);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(4, 8132742901390, 91, FALSE);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(2, 6219856404541, 115, FALSE);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(3, 9574109824068, 89, FALSE);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(4, 1126812354700, 51, FALSE);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 1126812354700, 51);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 3656018719947, 153);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 5494724089011, 51);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 4589910366138, 135);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 9033221237235, 135);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 3656018719947, 115);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 7016908686537, 89);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 2268167135439, 59);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 1126812354700, 150);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 6653159087817, 59);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 9224583734754, 129);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 5508185951725, 96);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 4440304732510, 103);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 6653159087817, 112);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 9028150382753, 71);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 2984578966862, 127);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(5, 6027037313846, 105, FALSE);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(2, 4751001788808, 73, FALSE);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 2594664167353, 155);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 3925719614933, 105);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 8298667821950, 71);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 9109804213797, 129);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 3193969717953, 73);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 1306445796635, 113);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 9224583734754, 73);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 7016908686537, 78);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 4869870691198, 155);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 2349417521177, 73);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 5015118156484, 73);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 1153005436685, 96);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 9858765974982, 122);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 6027037313846, 145);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 3064009453430, 103);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 6331997014819, 113);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 3193969717953, 122);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 5508185951725, 129);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 8626958072945, 96);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 7792489045395, 77);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 1347941499483, 139);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 6632716926317, 133);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 4152806489920, 159);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(1, 9207742114175, 86, FALSE);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(3, 1841363972930, 86, FALSE);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 4751001788808, 147);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 9109804213797, 144);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 4751001788808, 139);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 6219856404541, 123);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 6145925892422, 161);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 3079396977330, 123);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 2594664167353, 161);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(3, 8341696933214, 58, FALSE);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(5, 1884752033664, 87, FALSE);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(3, 9567718119779, 63, FALSE);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 9737863198576, 159);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 1999175221635, 116);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 7016908686537, 39);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 8910950787911, 139);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 6219856404541, 63);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 4751001788808, 159);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(5, 1347941499483, 98, FALSE);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 3127865758618, 132);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 4946671575029, 159);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 7438096765267, 123);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 7438096765267, 106);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 1798300176342, 167);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 3064009453430, 158);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 3243125056920, 109);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 9811917595601, 107);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 9354178882597, 158);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 4268627099896, 79);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 3243125056920, 157);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(5, 3207473542944, 44, FALSE);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 9812685120769, 130);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 2372413716794, 79);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 9109804213797, 124);

INSERT INTO review(likert, isbn, user_id,approved) VALUES(5, 2289945496584, 43, FALSE);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 4693874922830, 167);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 8132742901390, 163);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 3261285399325, 119);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 9882758923892, 54);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 6350033594347, 80);

INSERT INTO review(likert, isbn, user_id, approved) VALUES(2, 7561444116695, 36, FALSE);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 9207742114175, 158);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 9739130749705, 124);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 7561444116695, 28);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 1297436011637, 80);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 1334143094508, 85);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 7990244879027, 52);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 6331997014819, 36);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 4440304732510, 157);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 7659489693711, 67);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 6511646113812, 81);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 3261285399325, 100);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 5566444965150, 41);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 3618456023178, 31);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 9739130749705, 22);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 5183409819690, 65);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 9406856102132, 46);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 3578107963372, 120);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 6350033594347, 31);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 9007144409202, 81);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 5880267763753, 88);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 9993567451113, 134);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 9033221237235, 62);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 9567718119779, 110);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 7792489045395, 70);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 4454807324148, 70);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 4268627099896, 25);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 5494724089011, 134);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 9765654361715, 41);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 7990244879027, 100);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 1489895785488, 66);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 9737863198576, 110);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 2833210167593, 25);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 3261285399325, 134);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 9109804213797, 88);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 4391229539277, 42);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 4440304732510, 82);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 9739130749705, 82);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 1074560664703, 148);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 3174778329473, 102);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 4296522430758, 11);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 1841363972930, 160);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 1292103779027, 148);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 6219856404541, 40);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 9490109880272, 15);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 2984578966862, 15);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 6653159087817, 13);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 1292103779027, 35);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 1798300176342, 47);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 6456794880303, 61);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 2114657248842, 151);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 9028150382753, 47);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 6682660543221, 45);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 9224583734754, 11);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 7605024846753, 11);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 2984578966862, 164);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 4440304732510, 108);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 8498752694348, 61);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 4268627099896, 99);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 1486540055135, 94);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 7755898641996, 17);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 6153360567012, 104);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 1889530462928, 165);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 6350033594347, 91);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 8982090089752, 101);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 9862578231662, 68);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 3013463266893, 24);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 7990244879027, 101);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 6219856404541, 24);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 9094793362769, 150);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 7367371304098, 91);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 2372413716794, 153);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 9324118711655, 59);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 2012096842470, 91);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 3174778329473, 153);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 9547811883165, 150);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 6145925892422, 113);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 6219856404541, 103);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 3193969717953, 84);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 5566444965150, 105);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 2145897665884, 103);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 3243125056920, 93);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 3656018719947, 138);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 2833210167593, 93);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 9324118711655, 84);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 7214248851312, 114);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 5015118156484, 112);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 7567169927335, 105);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 7214248851312, 162);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 7205097535074, 123);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 9219034632769, 23);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 3656018719947, 55);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 3636299678055, 30);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 7016908686537, 123);

INSERT INTO review(likert, isbn, user_id) VALUES(5, 6145925892422, 9);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 3174778329473, 147);

INSERT INTO review(likert, isbn, user_id) VALUES(4, 8132742901390, 139);

INSERT INTO review(likert, isbn, user_id) VALUES(1, 4268627099896, 137);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 9207742114175, 9);

INSERT INTO review(likert, isbn, user_id) VALUES(2, 8910950787911, 87);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 4751001788808, 63);

INSERT INTO review(likert, isbn, user_id) VALUES(3, 6145925892422, 161);




INSERT INTO author (name, surname) VALUES ('Ευγένιος', 'Τριβιζάς');

INSERT INTO book (isbn, title, pages, language, keywords, publisher) VALUES (1234567890124, 'Ο Χαμένος Μανάβης', 250,'Ελληνικά', 'Για παιδία Περιπέτεια','Εκδόσεις Πατάκη'); 

INSERT INTO book_author (name, surname, ISBN) VALUES ('Ευγένιος', 'Τριβιζάς', 1234567890124);

INSERT INTO book_category (category_name, ISBN) VALUES ('Λογοτεχνία', 1234567890124);

INSERT INTO book_category (category_name, ISBN) VALUES ('Δράμα', 1234567890124);

INSERT INTO library_book  (school_id, copies, ISBN) VALUES (1, 4, 1234567890124);


