# itea-devops1

![prodjeck](https://user-images.githubusercontent.com/62216473/184539339-1335da95-fbec-4cfc-84cf-baed4172ddc8.jpg)
DevOps Technical Task
All infrastructure components advised to be represented as code, and provisioning of resources should be automated as much as possible.

Will be tested your ability to implement modern automated infrastructure, as well as general knowledge of system administration and coding. In your solution you should emphasize readability, maintainability and DevOps methodologies.

To begin, create a GitHub repository and start adding your work. Commit often, I would rather see a history of trial and error than a single monolithic push. When you're finished, commit the URL to your repository to Google Classroom task.

You can use the following folder structure or create your own:

./
├─ 1_infrastructure
│  └─ <your project>
└─ 2_application
   └─ <your project>
1. Infrastructure Test
Build out some basic Infrastructure in AWS or GCP to deploy Golang server that can be used in a repeatable way. Bonus points for the following:

Use of Terraform.
Use of Kubernetes.
Clearly explaining why you're doing things a certain way.
Providing a PNG diagram of your infrastructure.
2.1 Application (CI/CD)
Use a tool of your choice such as Ansible, Bash, Chef, Puppet or similar to automate the docker build and deploy of the Golang server that serves some static or dynamic content. Bonus points for the following:

Using Containers as part of your automation.
Creating a CI pipeline, using a tool of your choice, that deploys the web server to a cloud environment of your choice.
Serve traffic from 443 port with self-signed or public certificate would be highly appreciate.
2.2 Application (Coding)
Add a new handler in Golang application of your choice that does something you'd normally end up having to do manually. Some ideas:

Backing up a file and sending the output to a cloud storage solution(S3).
A basic API to provide you with some useful information.
Some healthcheck endpoint to check application status.
Getting some information back from an external source and presenting it to the end user.
Bonus points:

Generate and run a test of application to prevent deploy some errors in your environment.
