# ECS-Fargate-Deployed-Python-Web-App
This project demonstrates deploying a Python-based web application on AWS ECS using Fargate for serverless container orchestration. The application container image is hosted in Amazon Elastic Container Registry (ECR), and the deployment leverages AWS services such as ECS, IAM, and VPC for networking.  
The deployment process includes:

Containerization: Dockerizing the Python application.
Container Image Hosting: Pushing the Docker image to Amazon ECR.
Cluster and Service Management: Creating an ECS cluster and service using Fargate.
Networking Setup: Configuring subnets, security groups, and assigning public IPs for accessibility.
Automation: Leveraging AWS CLI commands for streamlined deployment and management.
Features:
Serverless architecture using AWS Fargate.
Highly scalable container deployment with minimal infrastructure management.
Secure networking with VPC subnets and security groups.
Publicly accessible application via a static IP.
AWS Services Used:
ECS (Fargate): For container orchestration.
ECR: To host the container image.
VPC: For secure networking.
IAM: To handle access roles and permissions.
