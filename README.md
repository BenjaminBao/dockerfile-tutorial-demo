# Dockerfile Tutorial Demo 🐳

[![Language: Python + Dockerfile](https://img.shields.io/badge/language-Python%20%2B%20Dockerfile-blue)](https://github.com/SterlingAureum/dockerfile-tutorial-demo)
[![Status: Educational Demo](https://img.shields.io/badge/status-educational--demo-yellowgreen)]()

> **Learn how to containerize a simple Python web app using Docker — a beginner‑friendly walkthrough from Dockerfile creation to running the container.**

---

## 🎯 Why this project?

This repository is designed for:
- Students or developers learning Docker fundamentals.
- Freelancers needing a quick demo project to showcase Docker skills.
- Anyone looking to move from “I know Docker” to “I’ve actually built and run containers.”

By the end of this project you’ll be able to:
1. Write a clean and efficient Dockerfile.  
2. Build a Docker image from your source code.  
3. Run a Docker container, map ports, and inspect running services.

---

## 📂 Project Structure

```
dockerfile‑tutorial‑demo/
├── Dockerfile          – Defines how the container image is built
├── app/
│   └── main.py         – Minimal Python Flask app
├── .dockerignore       – Excludes unnecessary files during image build
└── README.md           – Documentation and instructions
```

---

## 🧪 Step‑by‑Step Instructions

### 1️⃣ Build the Docker image

```bash
docker build -t dockerfile-demo .
```

**Explanation:**
- `docker build` → creates a Docker image  
- `-t dockerfile-demo` → assigns a tag (name)  
- `.` → uses the Dockerfile in the current directory  

---

### 2️⃣ Run the container

```bash
docker run -d -p 5000:5000 dockerfile-demo
```

**Explanation:**
- `-d` → runs in detached (background) mode  
- `-p 5000:5000` → maps port 5000 on your host to port 5000 in the container  
- `dockerfile-demo` → image name  

Then open your browser and visit:  
👉 [http://localhost:5000](http://localhost:5000)

You should see:

```
Hello from inside your Docker container!
```

---

### 3️⃣ Verify running containers

```bash
docker ps
```

To stop the container later:
```bash
docker stop <container_id>
```

---

## 🤔 Common Questions

**Q: Why is `EXPOSE 5000` in the Dockerfile?**  
It documents the port your app uses. The `-p` flag in `docker run` is what actually maps it to your machine.

**Q: Why use `--no-cache-dir` with pip install?**  
It keeps the image smaller by avoiding caching Python packages.

---

## 🧰 Requirements

- Docker installed on your system ([Install Guide](https://docs.docker.com/get-docker/))
- Basic command‑line familiarity

---

## 🌐 Optional Enhancement

You can extend this project later using Docker Compose or Kubernetes to demonstrate multi‑service deployments — perfect for DevOps portfolio growth.

---

## 👤 Author

**Sterling Aureum** — DevOps & AI Inference Engineer  
[GitHub](https://github.com/SterlingAureum)

---

**Repository Description Suggestion:**  
> Beginner‑friendly Dockerfile tutorial project — includes clear explanations for building, running, and understanding Docker containers.
