USE master
GO

IF (SELECT name FROM sys.databases where name='DataWarehouse') IS NOT NULL
BEGIN
	DROP DATABASE DataWarehouse
END
GO

CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO

IF (SELECT name FROM sys.schemas where name='bronze') IS NOT NULL
BEGIN
	DROP SCHEMA bronze;
END
GO

CREATE SCHEMA bronze;
GO

IF (SELECT name FROM sys.schemas where name='silver') IS NOT NULL
BEGIN
	DROP SCHEMA silver;
END
GO

CREATE SCHEMA silver;
GO

IF (SELECT name FROM sys.schemas where name='gold') IS NOT NULL
BEGIN
	DROP SCHEMA gold;
END
GO

CREATE SCHEMA gold;
GO
