/* Creating the data warehouse database
We create the schemas for our database : bronze, silver and gold. 

WARNING : will drop any database called DataWarehouse if it exists,
All the data in the database would be destroyed

*/
USE master;
GO
	-- Drop and Create the 'DataWarehouse' database
	IF EXISTS (SELECT 1 FROM sys.databases WHERE name = DataWarehouse)
	BEGIN 
		ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
		DROP DATABASE DataWarehouse;
	END;
	GO

	-- Create the 'DataWarehouse' database

	CREATE DATABASE DataWarehouse;
	GO

	USE DataWarehouse;
	GO

	-- Create Schemas
	CREATE SCHEMA bronze;
	GO
	CREATE SCHEMA silver;
	GO
	CREATE SCHEMA gold;
	GO
