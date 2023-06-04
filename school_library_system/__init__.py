from flask import Flask
from flask_mysqldb import MySQL
from flask_mail import Mail, Message
import mysql.connector

app = Flask(__name__)

# Configure MySQL connection
app.config['MYSQL_HOST'] = 'localhost'  
app.config['MYSQL_USER'] = 'library_user'  
app.config['MYSQL_PASSWORD'] = '12345Aa@' 
app.config['MYSQL_DB'] = 'school_library_system' 
app.config['SECRET_KEY'] = 'secret key'  
app.logger.debug('Debug message')
app.logger.info('Info message')

# Initialize MySQL
db = MySQL(app)

app.config['MAIL_SERVER'] = 'smtp.mail.yahoo.com'
app.config['MAIL_PORT'] = 587  
app.config['MAIL_USE_TLS'] = True
app.config['MAIL_USERNAME'] = 'arismarkog@yahoo.com' 
app.config['MAIL_PASSWORD'] = '12345678AAaa!@!' 

mail = Mail(app)

from school_library_system import routes
