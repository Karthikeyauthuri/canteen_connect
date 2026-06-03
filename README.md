# 🍽️ Canteen Connect

A full-stack web application that streamlines canteen operations by enabling students to browse menus, place food orders, and track order status while allowing canteen owners to manage menus, monitor orders, and verify pickups through a secure token-based system.

## 🚀 Features

### Student Module

* User Registration and Login
* Browse Food Menu
* Add Items to Cart
* Place Orders Online
* Track Order Status
* View Order History
* Secure Order Pickup using Verification Token

### Owner Module

* Manage Food Menu
* Add, Update, and Delete Menu Items
* View and Process Orders
* Update Order Status
* Verify Order Handover
* Manage Payment Records

## 🛠️ Tech Stack

### Frontend

* React.js
* Vite
* React Router DOM
* Context API
* CSS

### Backend

* Node.js
* Express.js

### Database

* JSON-based Local Database

## 📂 Project Structure

```text
canteen-connect/
│
├── frontend/
│   ├── src/
│   ├── public/
│   └── package.json
│
├── backend/
│   ├── routes/
│   ├── controllers/
│   ├── models/
│   ├── database.json
│   └── server.js
│
├── README.md
└── .gitignore
```

## ⚙️ Installation

### Clone Repository

```bash
git clone https://github.com/Karthikeyauthuri/canteen-connect.git
```

### Backend Setup

```bash
cd backend
npm install
npm start
```

### Frontend Setup

```bash
cd frontend
npm install
npm run dev
```

### Run Application

Open your browser and visit:

```text
http://localhost:3000
```

## 📌 API Endpoints

### Authentication

```http
POST /api/auth/login
POST /api/auth/register
```

### Menu Management

```http
GET    /api/menu
POST   /api/menu
PUT    /api/menu/:id
DELETE /api/menu/:id
```

### Order Management

```http
GET    /api/orders
POST   /api/orders
GET    /api/orders/student/:studentId
PATCH  /api/orders/:id/status
POST   /api/orders/verify
```

## 🔄 Order Workflow

```text
Order Placed
      ↓
Preparing
      ↓
Ready for Pickup
      ↓
Handover Verified
```

## 🎯 Key Highlights

* Full-Stack Web Application
* Role-Based Authentication
* Food Ordering System
* Menu Management
* Cart Functionality
* Order Tracking
* Token-Based Verification
* Responsive User Interface
* RESTful API Architecture

## 🔮 Future Enhancements

* MongoDB Integration
* JWT Authentication
* Online Payment Gateway
* QR Code Pickup Verification
* Real-Time Notifications
* Inventory Management
* Analytics Dashboard

## 👨‍💻 Author

**Karthikeya Uthuri**

Computer Science Undergraduate passionate about Full-Stack Development, Machine Learning, Data Science, and Artificial Intelligence.

## 📄 License

This project is developed for educational and learning purposes.

