# AUTOMATING MYSQL DATABASE PROVISIONING WITH TERRAFORM

## PROBLEM STATEMENT

Organizations often face challenges in efficiently provisioning MySQL databases within their infrastructure. Manual setups are time-consuming, error-prone, and lack scalability. There is a need for an automated solution that ensures consistency, reliability, and rapid deployment of MySQL databases.

## USE-CASE SCENARIO

Consider a scenario where an organization is expanding its online services and needs to deploy multiple MySQL databases to support growing data requirements. Manual setup would be impractical due to the risk of errors and time constraints. An automated solution using Terraform can provide a streamlined and repeatable process for provisioning MySQL databases across different environments.

## TASKS TO BE PERFORMED

1. **Define Infrastructure as Code (IaC):** Create Terraform scripts to define the desired state of the MySQL infrastructure, specifying details like database instances, users, and access controls.

2. **Terraform Initialization:** Initialize the Terraform configuration to set up the working directory and required plugins.

3. **Terraform Plan:** Review the execution plan generated by Terraform to understand the changes it will make to the infrastructure.

4. **Terraform Apply:** Apply the defined infrastructure changes to provision MySQL databases automatically.

5. **Verify and Monitor:** Implement validation steps to ensure the successful deployment of databases and set up monitoring for ongoing management.

---

## SOLUTION:

### PRE-REQUIREMENTS:

- **Cloud:** AWS
  
- **IAC:** Terraform
- **Database:** AWS MySQL RDS Database
- **User:** IAM User

---

## STEP 1 – CREATING AN IAM USER & ACCESS-KEY AND SECRET-KEY ACCESS

1. Create an **IAM User** with the following policies:
   - **AmazonEC2FullAccess**
   - **AmazonRDSFullAccess**

2. Generate an **access key and secret key** for the IAM User created in step 1. This key pair will be used for authentication when interacting with AWS services.


---

## STEP 2 – CREATING AN EC2 INSTANCE

1. Create an **EC2 Instance** using the **AWS EC2 Service.**

---

## STEP 3 - CONNECTING THE CREATED INSTANCE & INSTALLING REQUIRED PACKAGES

1. Connect to the created instance using **Instance Connect or an SSH client method.**

2. Clone the **GitHub Repository:**

    ```bash
    git clone https://github.com/Ravivarman16/automating-mysql-database-provisioning-with-terraform.git
    cd automating-mysql-database-provisioning-with-terraform
    ```

3. Change the file permissions and execute the `terraform.sh` file:

    ```bash
    chmod +x terraform.sh
    ./terraform.sh
    ```

4. Check whether the required packages are installed by using the following commands:

    ```bash
    terraform --version
    aws --version
    ```

---

## STEP 4 – CONFIGURING AWS CREDENTIALS

Configure IAM User credentials by using the following command:

    ```bash
    aws configure
    

---

## STEP 5 - PROVISIONING THE DATABASE USING TERRAFORM

1. Use the following commands for Terraform to create the database:

    ```bash
    terraform init
    terraform fmt
    terraform validate
    terraform plan
    terraform apply -auto-approve
    ```

2. After creating the database, use the following command to delete the database using Terraform:

    ```bash
    terraform destroy -auto-approve
    ```

---

## TERRAFORM OUTPUT:

![image](https://github.com/Ravivarman16/automating-mysql-database-provisioning-with-terraform/assets/129171351/2fcda7a2-2425-4b3d-a2ed-3d2024e92fc8)

---

## CONSOLE OUTPUT:

![image](https://github.com/Ravivarman16/automating-mysql-database-provisioning-with-terraform/assets/129171351/6519810a-0103-4a6a-8565-a1f53c6c42eb)


![image](https://github.com/Ravivarman16/automating-mysql-database-provisioning-with-terraform/assets/129171351/9e774e57-fcca-40ea-b826-0432fddb0649)


![image](https://github.com/Ravivarman16/automating-mysql-database-provisioning-with-terraform/assets/129171351/7b9f6738-e410-44f8-8e50-2103da6b0b49)


![image](https://github.com/Ravivarman16/automating-mysql-database-provisioning-with-terraform/assets/129171351/f9a9f086-e5b8-442e-902f-58d3f2413afc)


---

## BENEFITS OF DOING ABOVE TASK:

- **Consistency:** Terraform ensures that the infrastructure is provisioned consistently every time, reducing the chance of configuration drift.

- **Scalability:** Easily scale the number of MySQL databases up or down based on demand by adjusting the Terraform configuration.

- **Time Efficiency:** Automation speeds up the deployment process, allowing teams to focus on more critical tasks rather than manual provisioning.

- **Repeatability:** The Infrastructure as Code (IaC) approach allows for easy replication of the infrastructure setup in different environments, promoting a consistent development, testing, and production workflow.

- **Error Reduction:** With Terraform handling the provisioning process, human errors are minimized, leading to a more reliable and stable database environment.


---

All the files used in this task have been uploaded to this GitHub Repository: [automating-mysql-database-provisioning-with-terraform](https://github.com/Ravivarman16/automating-mysql-database-provisioning-with-terraform.git)

---

# Task Instructions Recap

All the steps for this task have been provided in this document: [Automating MySQL Database Provisioning with Terraform.pdf](https://github.com/Ravivarman16/automating-mysql-database-provisioning-with-terraform/files/13794567/Automating.MySQL.Database.Provisioning.with.Terraform.pdf)

---


