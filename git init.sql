IF EXISTS(SELECT OBJECT_ID('Datawarehouse','u') FROM sys.schemas)
BEGIN
	DROP DATABASE Datawarehouse
END
ELSE
BEGIN
   CREATE DATABASE Datawarehouse;
END
USE Datawarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO


