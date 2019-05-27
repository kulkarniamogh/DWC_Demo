# Readme

### Steps for importing DB objects

* Download the DB schema file - DWC_Demo_Schema.tar.gz
* From the Cloud Platform Cockpit, navigate to, your space -> Services -> Service Instances -> Name of your database (with hana-db service) -> Open Dashboard -> Go To SAP Hana Cockpit -> From the cockpit, go to Database Explorer
* You will find your Cockpit Resource Database in the list on the left side
* Under the DB, expand Catalog and then right click on **Schemas** and click on **Import Catalog Objects**
* Browse for the file **DWC\_Demo\_Schema.tar.gz**. As soon as you select the file, it will load all the DB objects. Here you can also set the name of the schema. It is recommended at this point to not change it as we would be using the schema name in further steps.

![screenshot_for_dbimport]()

* Click on **Import**
* Once imported, you would be able to see all the tables under the **DWC\_Demo\_Schema** in the left-bottom window. Click on the **Tables** from top left menu. 

![screenshot_for_dbtables]()

### Steps for creating database user, role and granting role to user


* Right click on the Cockpit Resource DB that you see in the top-left window and click on **Open SQL Console**. A new window would be opened in the workspace of the **Database Explorer**
* Copy-paste the commands from the file **/db_setup/scripts.sql** into the newly opened SQL console
* Select all the commands and click on the **Run** button in green (top-left of the SQL Console)
* It will execute all the commands quickly which will create an user **DWC\_DEMO\_User**, create a role **DWC\_DEMO\_ROLE**, grant the role to the newly created user and then grant a few other required privileges to this role.
* This role will also be granted later to the technical user of the HDI Container that is automatically created.
* You can check the newly created roles and users by running the following commands  
> select * from roles;  
> select * from users;