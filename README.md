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

<div align="center">

<img width="1918" height="1019" src="https://github.com/user-attachments/assets/03982afc-dbc6-4fd0-b8fe-7543fff0776a" />
<img width="1919" height="1019" src="https://github.com/user-attachments/assets/016f61dd-3b3a-40f1-85d2-687756768fc6" />
<img width="1919" height="1019" src="https://github.com/user-attachments/assets/f376e7a2-e0c2-4abd-8e48-05ed2071181e" />
<img width="1919" height="1019" src="https://github.com/user-attachments/assets/8ad36f4a-7ab9-4139-acfa-78ee9d6ef1d7" />
<img width="1919" height="1020" src="https://github.com/user-attachments/assets/b6961cf2-242d-4ed3-8a51-a7bb884126a9" />
<img width="1915" height="1017" src="https://github.com/user-attachments/assets/5b789851-40fa-47d4-be6b-5e92c61318b1" />
<img width="1919" height="1017" src="https://github.com/user-attachments/assets/9ffa0ce8-e200-4375-b820-377fde03691b" />
<img width="1919" height="1016" src="https://github.com/user-attachments/assets/ad4fcf29-5dd4-4f8b-97bb-d6a2b2ecad8d" />

</div>

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
