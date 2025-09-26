# WiseCow App 🐮

A containerized web app that displays random wisdom with ASCII cows using `cowsay` and `fortune`.

## 🚀 Quick Start

```bash
# Run with Docker
docker run -p 4499:4499 ghcr.io/sandyzayn/wisecow-app:latest

# Deploy to Kubernetes (Linux/macOS only)
kubectl apply -f k8s/
```

## 📁 Project Structure

```
wisecow-app/
├── .github/workflows/
│   └── ci-cd.yml                 # GitHub Actions CI/CD pipeline
├── k8s/                          # Kubernetes manifests
│   ├── deployment.yaml           # Main application deployment
│   ├── service.yaml              # Kubernetes service
│   ├── ingress.yaml              # Ingress configuration
│   ├── cluster-issuer.yaml       # Cert-manager cluster issuer
│   ├── selfsigned-issuer.yaml    # Self-signed certificate issuer
│   └── selfsigned-certificate.yaml # SSL certificate
├── src/
│   └── app.ts                    # TypeScript application entry point
├── Dockerfile                    # Docker configuration
├── package.json                  # Node.js dependencies
├── wisecow.sh                    # Shell script for cow sayings
└── README.md
```

## 🖼️ Screenshots
<img width="1919" height="1019" alt="Image" src="https://github.com/user-attachments/assets/69e98349-45af-41d0-95d2-c7d9d3e3e455" />
<img width="1919" height="1020" alt="Image" src="https://github.com/user-attachments/assets/40ae92b7-ccc1-48be-bdec-2bf614211f3f" />
<img width="1915" height="1017" alt="Image" src="https://github.com/user-attachments/assets/e32306c9-0cf1-4c04-85fc-3feb327b21a7" />
<img width="1919" height="1017" alt="Image" src="https://github.com/user-attachments/assets/7bb4fc36-822f-4178-a46e-8cd2d1825976" />
<img width="1919" height="1016" alt="Image" src="https://github.com/user-attachments/assets/7814a188-1c07-4838-bb41-ebd3ab4872b4" />
<img width="1918" height="1019" alt="Image" src="https://github.com/user-attachments/assets/131c2aa3-9b83-4904-9db4-652dc9d1ac72" />
<img width="1919" height="1019" alt="Image" src="https://github.com/user-attachments/assets/7169a769-fa5f-48bd-87b8-e3f75d30107a" />
<img width="1919" height="1019" alt="Image" src="https://github.com/user-attachments/assets/590226c5-0ceb-4248-baa6-b929b38922c0" />

## ⚡ Useful Commands

```bash
# Run locally with Docker
docker run -p 4499:4499 ghcr.io/sandyzayn/wisecow-app:latest

# Build from source
docker build -t wisecow-app:local .

# Check running containers
docker ps

# View application logs
docker logs <container-id>
```

## 🛠️ Tech Stack

- **Backend**: TypeScript + Node.js 🟦
- **Container**: Docker 🐳
- **Orchestration**: Kubernetes ☸️
- **CI/CD**: GitHub Actions 🔄
- **Registry**: GitHub Container Registry 📦

---

## ⚠️ Deployment Note

**Kubernetes deployment is not available for Windows users** - The CI/CD pipeline builds and pushes Docker images, but automated Kubernetes deployment requires a cloud-based cluster (not local minikube on Windows).

### For Windows Users:
- Use `docker run -p 4499:4499 ghcr.io/sandyzayn/wisecow-app:latest` to run locally
- Images are automatically built and pushed to GitHub Container Registry
- Manual deployment to local minikube is possible but not automated

### For Linux/macOS or Cloud Kubernetes:
- Full automated CI/CD with Kubernetes deployment is available
- Use `kubectl apply -f k8s/` for manual deployment

---

*"Wise cows live in well-containerized pastures!"* 🐮✨
