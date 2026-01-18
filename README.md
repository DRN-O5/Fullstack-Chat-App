# 💬 Real-Time Chat Application

## 📌 Overview

A full-stack **real-time chat application** that enables instant message delivery using **WebSockets**.  
The project is designed with **scalability, authentication, and production-ready deployment** in mind, and is fully **Dockerized** to ensure consistent behavior across environments.

---

## 🚀 Features

- 🔄 Real-time messaging with WebSockets  
- 🔐 User authentication & secure sessions  
- 💾 Persistent chat history  
- 📱 Responsive and modern UI  
- 🐳 Fully Dockerized backend for production-ready deployment  
- 🌍 Environment-based configuration (development vs production)

---

## 🛠️ Tech Stack

### Frontend
- **React** – Builds the interactive user interface  
- **Vite** – Fast development and optimized builds  
- **Tailwind CSS** – Utility-first responsive styling  
- **DaisyUI** – Prebuilt, customizable UI components  
- **Zustand** – Lightweight global state management  
- **Axios** – Handles API communication  

### Backend
- **Node.js** – JavaScript runtime  
- **Express.js** – API routing and middleware  
- **MongoDB** – Stores users and chat data  
- **Mongoose** – MongoDB object modeling  
- **Socket.IO** – Real-time, bidirectional communication  

### DevOps & Deployment
- **Docker** – Containerizes the backend for consistent, production-ready deployment  
- **Docker Desktop** – Local container management and monitoring  
- **Environment Variables** – Secure runtime configuration using `--env-file`

---

## 🐳 Docker Setup (Production)

### Build the Docker Image
```bash
docker build -t chat-app .
```

### Run the Container
```bash
docker run -p 5001:5001 --env-file .env.production chat-app
```
The backend runs on http://localhost:5001
Frontend is served statically in production mode.

## Environment Variables
Create a ```.env.production``` file in the root directory:
```env
MONGODB_URI=mongodb
PORT=5001
JWT_SECRET=yoursecretkey

CLOUDINARY_CLOUD_NAME=name
CLOUDINARY_API_KEY=key
CLOUDINARY_API_SECRET=secret

NODE_ENV=development
```
⚠️ This file is intentionally ignored by Git and Docker to protect sensitive data.

## 📁 Project Structure
```bash
root/
├── client/        # React frontend
├── server/        # Node.js backend
├── Dockerfile
├── .dockerignore
├── package.json
└── README.md
```
