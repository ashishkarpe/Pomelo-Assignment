# Pomelo-Assignment
-Create a github repository for the code they have written (including actions based build workflow).
-Install terraform and author the following on any cloud provider they like, preferably AWS, GCP or Azure * Additional non-default VPC with internet gateway and route table
 * Private and Public Subnets
 * SSH Key Setup
 * Virtual Compute instances that run a web service
 * Virtual Compute instances that run a database, bonus points for leveraging an external source such as RDS
 * Render a simple website that shows information being either pulled out of the data layer or from some 3rd party API
 * Logging enabled to a central place
 * Sufficient documentation for all of the above
Alternatively,
 - All of the above, but running on EKS, GKE, or AKS.


About The App:
Application is a spring boot java project which intends to take json inpunt using post method and push data to RDS maria db and retrive data and display.

Current Status of App: 
Basic Hello app is ready but RDS db part of application is not yet finished.

DevOps Infra automation: 
Comeplete AWS Infra provisioning is managed by Terraform. EKS cluster and RDS are key components. Security point of view AWS keys are not pushed into code but managed as terraform variables as an input to terraform apply. 

CI/CD:
Using jenkins groovy file App gets build and deployed to EKS Cluster this is tested and Verfied. 

Note: Almost all part of DevOps is completed but App side is remaining so If I get some more time will fix it.
