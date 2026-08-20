/*
================================================================
Create Database and Schemas
================================================================
Script purpose:
This script creates a new database name 'DataWarehouse' after checking if it already exists.
If database exists it drops and recreates a new database. The script creates three schemas within the database:'bronze','silver' and 'gold'.

Warning:
Running this script will drop the "DataWarehouse' database if it exists.
All data in the database will be permanently deleted. Proceed with caution and ensure you have backup before running.
*/

use master;
go

--Drop the database if it already exists--
  
if exists(select 1 from sys.databases where name = 'DataWarehouse')
begin
alter database DataWarehouse set single_user with rollback immediate;
drop database DataWarehouse;
end;
go
  
-- Create Database--
  
create database 'DataWarehouse';
go

--Use Database--
  
use DataWarehouse;
go

-- Create Schemas for the Database--

create schema 'bronze';
go
create schema 'silver';
go
create schema 'gold';
go


