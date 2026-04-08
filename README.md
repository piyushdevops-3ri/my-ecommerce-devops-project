# E-Commerce DevOps Project

Run Terraform:
cd terraform
terraform init
terraform apply

Run App:
docker build -t ecommerce-app .
docker run -p 5000:5000 ecommerce-app
