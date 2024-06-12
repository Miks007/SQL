--Step 1 Create login dbreader 
USE [master]
CREATE LOGIN dbowner WITH PASSWORD = ''

--Step 2 Crete user dbowner on source DB
USE DatabaseName
CREATE USER dbowner FOR LOGIN dbowner
EXEC sp_addrolemember 'db_owner','dbowner'
