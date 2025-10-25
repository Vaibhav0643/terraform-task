# 🚀 Infrastructure as Code (IaC) with Terraform — Docker Container Provisioning

## 📘 Objective
The goal of this task is to provision a **local Docker container** using **Terraform**.  
This demonstrates the use of Infrastructure as Code (IaC) to automate container deployment.

---
## 🧰 Tools & Technologies
- **Terraform**  
- **Docker**  

---

## ⚙️ Task Flow

### 1. Terraform Configuration
- Created `terraform.tf` with the **Docker provider**.  
- Created `main.tf` defining:
  - `docker_image` resource to pull the Nginx image.  
  - `docker_container` resource to run a container named `my-nginx` on port 8080.

### 2. Initialize Terraform
- Run `terraform init` to initialize the project and download the Docker provider.

### 3. Review Plan
- Run `terraform plan` to preview the resources Terraform will create.

### 4. Apply Configuration
- Run `terraform apply -auto-approve` to provision the Docker container.  
- Verify the container is running:
  ```bash
  docker ps
  curl http://localhost:8080
  ```

### 5. Inspect Terraform State
- Run `terraform state list` and `terraform show` to see resources managed by Terraform.

### 6. Destroy Infrastructure
- Run `terraform destroy -auto-approve` to remove the container and Docker image.

---
# Deliverables
## Terraform Configuration Files
- `terraform.tf`  
- `main.tf`  

## Execution Screenshots
- Terraform commands: `init`, `plan`, `apply`, `state`, `destroy`  
- Docker container verification: `docker ps`, `curl`  
> **Note:** All screenshots are available in the `Screenshots` folder.

## Key Learnings
- Understanding **Infrastructure as Code (IaC)** concepts.  
- How Terraform manages **local resources** (Docker containers).  
- Workflow: `init → plan → apply → state → destroy`.  
- How Terraform **tracks resource state** for reproducibility.  
- Automating container provisioning instead of manual Docker commands.
