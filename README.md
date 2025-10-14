# Frontend-Dev# 🌐 Web Development Fundamentals

This document explains the core concepts of web development including frontend, backend, full-stack development, client-server architecture, and essential tools.

---

## 🧩 1. Difference between Frontend, Backend, and Full-Stack Development

| Type | Description | Example |
|------|--------------|----------|
| **Frontend** | The **visible part** of a website or web app that users interact with directly. Built using HTML, CSS, and JavaScript. | Example: The design, buttons, and forms you see on Amazon’s homepage. |
| **Backend** | The **server-side** part that manages data, logic, and communication between the frontend and database. Uses languages like Node.js, Python, Java, etc. | Example: When you log in to Amazon, your credentials are verified by the backend. |
| **Full-Stack** | A developer who works on both frontend and backend. | Example: A full-stack developer can create both the UI and handle database logic for a login page. |

---

## 🖥️ 2. Client-Server Model Diagram

```mermaid
graph LR
A[Client (Browser)] -->|HTTP Request| B[Web Server]
B -->|Fetches Data| C[Database]
C -->|Returns Data| B
B -->|HTTP Response (HTML, CSS, JS)| A
```

---

## 🌍 3. How a Browser Requests and Displays a Web Page

**Steps:**
1. The user enters a URL (e.g., `www.google.com`) in the browser.
2. The browser sends an **HTTP request** to the **web server**.
3. The server locates the requested file or dynamically generates it.
4. The server sends an **HTTP response** containing HTML, CSS, and JS.
5. The browser’s **rendering engine** interprets the code and displays the web page.

---

## ⚙️ 4. Tools Required for Web Development Environment

| Tool | Purpose |
|------|----------|
| **VS Code** | Code editor for writing HTML, CSS, and JS. |
| **Node.js** | Backend runtime environment for running JavaScript outside the browser. |
| **Git & GitHub** | Version control and online repository management. |
| **Browser (Chrome/Firefox)** | For testing and debugging web pages. |
| **Live Server Extension (VS Code)** | Auto-reloads the browser as you edit your HTML/CSS/JS. |

---

## 🖥️ 5. What is a Web Server?

A **web server** is software or hardware that **delivers web pages** to clients over the internet using the **HTTP/HTTPS** protocol.

**Examples:**
- **Apache HTTP Server**
- **Nginx**
- **Microsoft IIS**
- **LiteSpeed**
- **Node.js (Express.js)**

---

## 👩‍💻 6. Roles in a Web Development Project

| Role | Responsibility |
|------|----------------|
| **Frontend Developer** | Designs UI, ensures responsiveness, and manages user interaction. |
| **Backend Developer** | Manages logic, APIs, databases, and authentication. |
| **Database Administrator (DBA)** | Designs, maintains, and secures the database. Handles backups and optimization. |

---

## 🧰 7. Installing VS Code for HTML, CSS, JS

### Steps:
1. Download and install **Visual Studio Code** from [https://code.visualstudio.com](https://code.visualstudio.com)
2. Install the following extensions:
   - **Live Server**
   - **Prettier – Code Formatter**
   - **HTML CSS Support**
   - **JavaScript (ES6) snippets**
3. Create a folder (e.g., `web-project`)
4. Inside it, create files:
   - `index.html`
   - `style.css`
   - `script.js`
5. Right-click `index.html` → **Open with Live Server**

📸 *Screenshot Placeholder:*  
*(Add your screenshot here after setup — showing VS Code open with HTML/CSS/JS files and Live Server running)*

---

## 🧱 8. Static vs Dynamic Websites

| Type | Description | Example |
|------|--------------|----------|
| **Static Website** | Content does not change unless manually updated. Built using HTML & CSS only. | Example: A company portfolio site. |
| **Dynamic Website** | Content changes dynamically using backend code and databases. | Example: Facebook, Amazon, YouTube. |

---

## 🌐 9. Popular Web Browsers & Rendering Engines

| Browser | Rendering Engine | Description |
|----------|------------------|-------------|
| **Google Chrome** | Blink | Fast and optimized for modern web standards. |
| **Mozilla Firefox** | Gecko | Open-source engine known for developer tools. |
| **Safari** | WebKit | Used in Apple devices; highly optimized for macOS/iOS. |
| **Microsoft Edge** | Blink | Based on Chromium; replaces old EdgeHTML. |
| **Opera** | Blink | Lightweight browser with built-in VPN and ad blocker. |

---

## 🗺️ 10. Basic Web Architecture Flow Diagram

```mermaid
graph TD
A[Client (Browser)] -->|Request| B[Web Server]
B -->|Query| C[Database]
C -->|Data Response| B
B -->|API Response| D[Frontend (HTML/CSS/JS)]
D -->|Render to| A
```

---

## ✅ Summary

This document covered:
- Frontend, backend, and full-stack concepts  
- Client-server architecture  
- Browser request cycle  
- Tools and setup for development  
- Web server overview  
- Team roles  
- Static vs dynamic sites  
- Browser engines  
- Web architecture diagram  

---

📄 **Author:** *Yash Khandelwal*  
🕓 **Date:** *14 October 2025*  
📚 **Subject:** *Web Development Basics*
