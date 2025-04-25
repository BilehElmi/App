Simple Web App with AWS CI/CD Pipeline

Project Overview:

This project demonstrates how to build a simple web application (a static HTML page or a basic Python/Node.js app) and set up a fully automated CI/CD pipeline using only AWS Free Tier services. The pipeline automatically deploys the app to an EC2 instance every time code is pushed to the repository.

Features:

Simple web application (Flask/Node.js or static HTML)

Source code managed in GitHub or AWS CodeCommit

Automated CI/CD pipeline using AWS CodePipeline, CodeDeploy, and optionally CodeBuild

Deployment target: AWS EC2 Free Tier instance (t2.micro or t3.micro)

Infrastructure and deployment automation with appspec.yml

Monitoring with AWS CloudWatch (basic free tier monitoring)

Architecture
text
GitHub / CodeCommit → CodePipeline → CodeDeploy → EC2 Instance (Flask/Node.js app)
Prerequisites
AWS Account with Free Tier eligibility

GitHub or AWS CodeCommit repository

AWS CLI configured (optional)

SSH key pair for EC2 access

Project Structure
text
.
├── app.py / index.html          # Your application code
├── requirements.txt             # Python dependencies (if applicable)
├── appspec.yml                 # AWS CodeDeploy deployment instructions
├── scripts/
│   └── restart_app.sh          # Script to install dependencies and restart app
└── README.md                   # Project documentation
Setup Steps
1. Prepare Your Application Code
Create a simple app (e.g., Flask “Hello World” or static HTML page).

Push your code to GitHub or AWS CodeCommit.

2. Launch a Free Tier EC2 Instance
Launch a t2.micro or t3.micro instance using Amazon Linux 2 or Ubuntu.

Open port 80 in the security group.

Install necessary software (Python, Node.js, Nginx/Apache).

Install and start the AWS CodeDeploy agent.

3. Set Up AWS CodeDeploy
Create a CodeDeploy Application and Deployment Group.

Attach your EC2 instance to the deployment group via tags.

Create and attach an IAM role with required permissions.

4. Prepare the Deployment Specification
Add an appspec.yml file defining files to copy and lifecycle hooks.

Example for static site deployment:

text
version: 0.0
os: linux
files:
  - source: /
    destination: /var/www/html
For apps, add scripts to install dependencies and restart the app.

5. Set Up AWS CodePipeline
Create a pipeline with Source (GitHub/CodeCommit), optional Build (CodeBuild), and Deploy (CodeDeploy) stages.

Configure pipeline to trigger on code pushes.

6. Test Your Pipeline
Push a code change to your repository.

Watch CodePipeline automatically deploy your app to EC2.

Visit your EC2 public IP to verify the app is live.

Monitoring and Cleanup
Use AWS CloudWatch for basic monitoring and logs.

Terminate EC2 instances when not in use to avoid charges.

Why This Project Matters
Demonstrates practical AWS DevOps skills: automation, deployment, monitoring.

Shows understanding of CI/CD concepts and AWS developer tools.

Uses Infrastructure as Code principles (appspec.yml).

Fully compatible with AWS Free Tier to minimize costs.

Additional Resources
AWS CodeDeploy Documentation

AWS CodePipeline Documentation

AWS Free Tier Details

Flask Documentation

License
This project is licensed under the MIT License.

Feel free to customize this README with your repo name, app details, screenshots, and any additional instructions specific to your implementation.
