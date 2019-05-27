-- Create - DWC_DEMO_User to access the newly imported DB schema

CREATE USER DWC_DEMO_User PASSWORD Welcome2 NO FORCE_FIRST_PASSWORD_CHANGE;
ALTER USER DWC_DEMO_User DISABLE PASSWORD LIFETIME;

-- Role - DWC_DEMO_ROLE creation. This role would later be granted to the technical user of the HDI container
CREATE ROLE DWC_DEMO_ROLE;
GRANT DWC_DEMO_ROLE TO DWC_DEMO_User WITH ADMIN OPTION;

-- Schema - DWC_Demo_Schema. If you have imported the DWC Demo Objects with any name other than DWC_Demo_Schema, make sure to update the name in the below statements
GRANT CREATE ANY ON SCHEMA "DWC_Demo_Schema" TO DWC_DEMO_ROLE WITH GRANT OPTION;
GRANT SELECT ON SCHEMA "DWC_Demo_Schema" TO DWC_DEMO_ROLE WITH GRANT OPTION;
GRANT INSERT ON SCHEMA "DWC_Demo_Schema" TO DWC_DEMO_ROLE WITH GRANT OPTION;
GRANT DELETE ON SCHEMA "DWC_Demo_Schema" TO DWC_DEMO_ROLE WITH GRANT OPTION;