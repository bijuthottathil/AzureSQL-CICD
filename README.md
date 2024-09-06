# Deploy Azure SQL Database DB Scripts using CI/CD pipeline

![image](https://github.com/user-attachments/assets/64edb9e0-a325-4ed2-9ca6-5e45d8c4ed79)

Pipeline should come like below
![image](https://github.com/user-attachments/assets/1e88d2a9-9ac5-4472-9801-fa3c8eb6087a)



New Azure SQL DB is created 
![image](https://github.com/user-attachments/assets/e6907b18-eefb-461f-946d-c2eaa07b24fe)

Azure Devops Project is ready

![image](https://github.com/user-attachments/assets/a25e94a6-6f54-4266-a3bb-89c44773247b)


Repo is created 

![image](https://github.com/user-attachments/assets/ea333c25-9e07-4b93-bd4d-bbc0ca77544a)

# We will be creating new table and inserting few records in this demo. After deployment, will add rollback job to rollback all changes using rollback script


Created new release pipeline
![image](https://github.com/user-attachments/assets/366b9070-95c6-4625-922d-e6f2cf8e92f2)


 
Create Empty job,  Create artifact, In my case, my repository is in Azure Devops, I selected details
![image](https://github.com/user-attachments/assets/afd5a3ee-6588-46bc-95a5-5d886e31fee7)

 

Adding a job now
 ![image](https://github.com/user-attachments/assets/d8234d0f-f09b-4834-a675-46cd5ea95507)
 ![image](https://github.com/user-attachments/assets/86cbbfc4-e939-4c67-9c9f-3f360047b78b)


 

Provided sql server details and select dbscript stored in artifact folder

 ![image](https://github.com/user-attachments/assets/2ecfcd69-8eee-41f2-8307-7fad3f8d1261)

 ![image](https://github.com/user-attachments/assets/f5bed81b-71f7-447d-a2c2-0d776436942e)



	 
Enabling triggers
 ![image](https://github.com/user-attachments/assets/9ca6a3a4-7d45-4a3d-9907-bccc8c141de9)

 Set appropriate approval settings

 ![image](https://github.com/user-attachments/assets/fe74057c-53c4-4ead-b3b8-752098d9d51f)


![image](https://github.com/user-attachments/assets/ec0040d4-5437-46a5-ba3c-f6e3b18be733)

 

After cloning current stage, added new stage for rollback
![image](https://github.com/user-attachments/assets/46fba9d4-21cc-4678-a335-63fdf63d7aff)

 
Ready to run the pipeline. Before execution, verified that table departments not available in DB
![image](https://github.com/user-attachments/assets/615e9948-9bdc-4291-98be-2e982c6bcc94)

 
Once we start running the pipeline, it will execute below 2 scripts in repository

 ![image](https://github.com/user-attachments/assets/f2cf7434-657d-45e4-b75f-5e48561728ff)

 ![image](https://github.com/user-attachments/assets/f009f47d-7e5f-4682-9151-23fc1a325505)
 ![image](https://github.com/user-attachments/assets/5075014d-09ab-4a1d-8034-5ac212d79c38)

![image](https://github.com/user-attachments/assets/072551d1-97cc-4fc0-97fd-5aa2314bac17)

 
 

After approval, deployment started

![image](https://github.com/user-attachments/assets/6e759ce0-79d1-41f0-9f9b-66f71f0aa71e)

 
Deployment is completed successfully.

![image](https://github.com/user-attachments/assets/2bc757e7-0cd9-4505-82c0-55d159d2deae)

 
You can see results in Sql Server. New table is created and rows are inserted
![image](https://github.com/user-attachments/assets/26784d01-4921-4f67-9c10-36257a84955d)


 

Now, I am trying to rollback these change by approving rollback job in release pipeline

 ![image](https://github.com/user-attachments/assets/c72ae6a6-a73b-4f99-a8e4-8aeb71909941)

![image](https://github.com/user-attachments/assets/e30b822e-f458-4a12-a23f-2689d38c9be8)

 

Rollback successful
![image](https://github.com/user-attachments/assets/7ef9c855-8c1b-425c-b4ca-f18f6c1ccffe)

 
Now we will check database and see table is existing or not

![image](https://github.com/user-attachments/assets/f89cf0f4-70cb-4da6-b6f7-7a1fc836b1ab)

 

Table is not available after rollback
