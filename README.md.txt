# 🍔 FeastFast - Food Delivery App

**FeastFast** is a Python console-based food delivery app. Browse restaurants, place orders, track them in real-time, and manage previous orders. It uses **MySQL** for restaurant menus and **Python `pickle`** files for storing user signup and order history.

---

## ✨ Features

- User Signup & Login
- Browse All Restaurants
- Search for Food or Restaurant
- Add Items to Cart & Checkout
- Track Orders with Simulated ETA
- View Previous Orders
- Multiple Payment Options: Cash, UPI, Net Banking, Credit/Debit Card
- Provide Feedback & Contact Support

---

## 📂 Project Structure

Food_Delivery_App/
│
├─ app.py # Main Python script
├─ database.sql # MySQL database dump
├─ README.md # Project documentation
├─ .gitignore # Git ignore rules

yaml
Copy
Edit

> Dynamic files like user signup data and order history are **not included**.

---

## 🛠️ Prerequisites

- Python 3.8+
- MySQL Server
- pip (Python package manager)

---

## ⚡ Installation

1. **Clone the repository:**
```bash
git clone https://github.com/yourusername/Food_Delivery_App.git
cd Food_Delivery_App
Create a virtual environment (recommended):

bash
Copy
Edit
python -m venv venv
Activate the virtual environment:

Windows (PowerShell):

powershell
Copy
Edit
.\venv\Scripts\Activate.ps1
Windows (CMD):

cmd
Copy
Edit
.\venv\Scripts\activate.bat
Mac/Linux:

bash
Copy
Edit
source venv/bin/activate
Install dependencies:

bash
Copy
Edit
pip install mysql-connector-python
🗄️ Database Setup
Open MySQL Workbench or your preferred client.

Create a new database:

sql
Copy
Edit
CREATE DATABASE class12project;
USE class12project;
Import database.sql to create all restaurant tables and menu items.

Update database connection in app.py if needed:

python
Copy
Edit
cnx = mysql.connector.connect(
    host='localhost',
    user='root',
    password='YOUR_PASSWORD',
    database='class12project'
)
▶️ How to Run
bash
Copy
Edit
python app.py
Choose SIGNUP or LOGIN.

Browse restaurants, add items to cart, checkout, and track orders.

User files are generated automatically in a local folder.

⚠️ Notes
venv/ and dynamic user files (signupfile.dat, order files) are ignored in GitHub.

Order tracking is simulated with random ETAs.

Best run in terminal/command prompt for proper formatting.

📄 License
This project is for educational purposes and can be freely used, modified, or shared.