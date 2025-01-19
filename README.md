# Automated Deployment of Inception

This repository contains the automated deployment of a containerized WordPress site inspired by the **Inception** subject. The project aims to deploy a fully functional web server and its associated infrastructure on a remote cloud instance using automation tools.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Requirements](#requirements)
- [Usage](#usage)
- [Platform and Cloud Resources](#platform-and-cloud-resources)
- [Security Considerations](#security-considerations)
- [Submission Guidelines](#submission-guidelines)
- [License](#license)

---

## Introduction

This project automates the deployment of a WordPress site and its services on a cloud-based instance using containerization principles. Each process runs within its own container, ensuring modularity and maintainability.

**Key Objectives:**
- Deploy and automate a WordPress site using a tool like Ansible.
- Implement a "1 process = 1 container" architecture.
- Ensure data persistence, security, and scalability.

---

## Features

1. **Fully Automated Deployment**:
   - Deploys WordPress, PHPMyAdmin, and MySQL in separate containers.
   - Uses automation tools (e.g., Ansible) to streamline the process.

2. **Data Persistence**:
   - Ensures user data, images, and configurations are not lost on reboot.

3. **Scalable Architecture**:
   - Deploys on multiple servers if required.

4. **Secure Configuration**:
   - Limits public access and enforces secure connections (TLS).

5. **Dockerized Infrastructure**:
   - Includes a `docker-compose.yml` file for managing containers.

---

## Requirements

- An Ubuntu 20.04 LTS server with:
  - Python pre-installed.
  - SSH daemon running.
- Docker and Docker Compose.
- Automation tool (e.g., Ansible).

---

## Usage

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/abdelhamidbouazi/cloud-1.git
   cd cloud-1
   ```

2. **Setup Environment**:
   - Install Docker and Docker Compose.
   - Install Ansible or your preferred automation tool.

3. **Run Deployment Script**:
   ```bash
   ansible-playbook deployment.yml
   ```

4. **Access the Site (not available yet)**:
   - Visit `https://domain.com` to access WordPress.
   - Use `https://domain.com/phpmyadmin` for database management.

---

## Platform and Cloud Resources

- Choose a cloud provider (AWS, Azure, GCP, etc.) based on available free credits or resources.
- Ensure to terminate unused services to avoid unnecessary costs.

---

## Security Considerations

- Protect sensitive credentials and keys.
- Use HTTPS for all web traffic.
- Restrict database access to internal connections.

---

## Submission Guidelines

- All required files, including `docker-compose.yml` and automation scripts, must be included in the repository.
- Ensure your repository does not contain any sensitive information such as API keys or passwords.

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
