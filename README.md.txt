Food Delivery App

This is a simple Python-based Food Delivery application using MySQL as the database. It allows users to sign up, view menus, and manage orders.

Features

User sign-up and login

Menu display

Order placement

Database storage using MySQL

Prerequisites

Python 3.x

MySQL server installed and running

mysql-connector-python library

Install the required Python library with:

pip install mysql-connector-python

Setup Instructions

Clone the repository:

git clone <your-repo-url>
cd Food_Delivery_App


Set up the database:

Create a MySQL database named class12project.

Run food_delivery.sql in your MySQL server to create tables and sample data.

Configure Database Credentials:

Edit app.py and update your MySQL credentials:

cnx = mysql.connector.connect(
    host='localhost',
    user='<your_mysql_user>',
    password='<your_mysql_password>',
    database='class12project'
)


Note: Do not store your real credentials in the repo. Keep them blank or use environment variables if you prefer.

Run the application:

python app.py

Important Notes

The file signupfile.dat is tracked in this repo. It stores user data.

Make sure MySQL server is running before starting the app.

Contributions

Feel free to fork this repo and add new features or improve the code.