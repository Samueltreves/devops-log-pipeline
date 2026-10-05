# 📊 Log Metrics Collector & CI Pipeline

An automated log and system metrics collection pipeline built with **Bash**, **Docker**, and **GitHub Actions**.

## 🛠 Tech Stack & Tools
- **Scripting:** Bash (`collector.sh`, `test.sh`)
- **Containerization:** Docker
- **Monitoring Integration:** Prometheus metrics configuration (`prometheus.yml`)
- **CI/CD:** GitHub Actions (Automated testing & Docker Hub deployment)

## 🚀 Key Features
- **System Metrics Collection:** Shell script harvesting log data and system metrics.
- **Automated Testing:** Dedicated testing script integrated into the CI flow to validate script execution and log outputs.
- **Containerized Environment:** Fully Dockerized application ensuring consistent execution across local and production environments.
- **CI/CD Pipeline:** Automated build, test, and push process to Docker Hub triggered on every commit.

## 🏗 Pipeline Workflow
1. **Lint & Test:** Executes `test.sh` to verify `collector.sh` functionality.
2. **Build:** Containerizes the application using the `Dockerfile`.
3. **Publish:** Logs into Docker Hub and pushes the latest container image.
