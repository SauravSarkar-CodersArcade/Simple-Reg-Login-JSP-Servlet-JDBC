---

```markdown
# 🛡️ JSP-Servlet-JDBC Registration & Login System

A fully functional 💻 **Registration and Login Web Application** built using:

- ✨ JSP + Servlet (Jakarta EE)
- ⚙️ JDBC (MySQL Connector)
- 🐬 MySQL 8+
- 🔥 Apache Tomcat 10/11
- 🎨 HTML5 + CSS3 (with gradient styling)

---

## 🌐 Project Overview

This project demonstrates a beginner-friendly yet solid web authentication system where users can:

✅ Register with personal details  
✅ Log in with credentials  
✅ Be greeted with a dynamic welcome message using session management  

---

## 🧰 Technologies Used

| 🔧 Layer       | 🧠 Technology                     |
|---------------|-----------------------------------|
| Front-End     | HTML5, CSS3                       |
| Server-Side   | JSP, Servlet (Jakarta Servlet API)|
| Backend       | JDBC (MySQL Connector/J)          |
| Database      | MySQL 8.x                         |
| Server        | Apache Tomcat 10/11               |

---

## 📁 Project Structure

```

📂 your-project-root/
│
├── 📄 Register.java        # Handles user registration logic
├── 📄 Login.java           # Handles login authentication
│
├── 📄 register.jsp         # Registration form page
├── 📄 login.jsp            # Login form page
├── 📄 profile.jsp          # Welcome page after login
│
└── 🗃️ register\_user.sql     # SQL script to initialize the database

````

---

## 🛠️ Setup Instructions

### 🔹 Step 1: Database Setup

```sql
CREATE DATABASE register_user;
USE register_user;

CREATE TABLE register (
    name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100),
    gender VARCHAR(100),
    current_city VARCHAR(100)
);
````

---

### 🔹 Step 2: Environment Requirements

* ☕ JDK 17+
* 🐱 Apache Tomcat 10.1+ or 11.x
* 🐬 MySQL 8.x
* 🧠 IDE: Eclipse / IntelliJ (with Dynamic Web Project support)

---

### 🔹 Step 3: Configuration

Make sure the following DB connection config is used in both `Register.java` and `Login.java`:

```java
private final String url = "jdbc:mysql://localhost:3306/register_user";
private final String username = "root";
private final String password = "1234";
```

🔐 **Update credentials as per your MySQL setup.**

---

## ⚠️ Security Note

This project is educational 🧑‍🏫. For production-grade systems:

* 🔒 Use password hashing (bcrypt/argon2)
* 🛡️ Validate & sanitize user inputs
* 🚫 Prevent SQL injection
* 🔐 Use HTTPS & secure cookies

---

## 💡 Features

* 📌 Registration Form with Radio Buttons, Dropdown
* 📌 Login Form with Validation
* 📌 JDBC integration for storing & retrieving user data
* 📌 Session-based greeting on the profile page
* 📌 Gradient UI with minimal styling

---

## 🌈 UI Screenshots (Optional)

*You can add screenshots using:*

```markdown
![Register Page](screens/register.png)
![Login Page](screens/login.png)
```

---

## 🚀 Future Enhancements

* 🔁 Forgot Password Flow
* 📬 Email Verification
* 🧩 Modular MVC Architecture
* 📊 Admin Dashboard
* 🌐 Bootstrap-based Responsive UI

---

## 🙋‍♂️ Author

Made with 💙 by **Saurav Sarkar**
🔗 [LinkedIn](https://www.linkedin.com/in/saurav-sarkar-0b49251b1/)
🐙 [GitHub](https://github.com/SauravSarkar-CodersArcade)

---

## 📃 License

🪪 This project is licensed under the **MIT License** — use it freely and modify it responsibly!

