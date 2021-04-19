# Pomelo-Assignment
-Create a github repository for the code they have written (including actions based build workflow).
-Install terraform and author the following on any cloud provider they like, preferably AWS, GCP or Azure * Additional non-default VPC with internet gateway and route table
 * Private and Public Subnets --> **Done**
 * SSH Key Setup ---> **Done**
 * Virtual Compute instances that run a web service  ---> **Done as ELB**
 * Virtual Compute instances that run a database, bonus points for leveraging an external source such as RDS ---> **RDS Setup using Terraform Done But Java app code for DB is developrs task that is remaining**
 * Render a simple website that shows information being either pulled out of the data layer or from some 3rd party API  ---> **Info is Displayed on AWS ELB endpoint created by K8s Service and using auto scaling group**
 * Logging enabled to a central place
 * Sufficient documentation for all of the above **Done**
Alternatively,
 - All of the above, but running on EKS, GKE, or AKS. ---> **All of the above, but running on EKS managed by terraform**

**Solution: **

**About The App**:
Application is a spring boot java project which intends to take json inpunt using post method and push data to RDS maria db and retrive data and display.

**Current Status of App**: 
Basic Hello app is ready but RDS db part of application is not yet finished.

**DevOps Infra automation**: 
Comeplete AWS Infra provisioning is managed by Terraform. EKS cluster and RDS are key components. Security point of view AWS keys are not pushed into code but managed as terraform variables as an input to terraform apply. 

**CI/CD:**
Using jenkins groovy file App gets build and deployed to EKS Cluster this is tested and Verfied. 

Note: Almost all part of DevOps is completed but App side is remaining so If I get some more time will fix it.
