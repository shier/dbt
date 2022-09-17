{{ config(materialized='table',schema='dbo')}}
Select
	cast([TableID] as int) [TABLEID],
	cast([TableName] as nvarchar(4000)) [TABLENAME],
	cast([UsersID] as int) [USERSID],
	cast([DateCreated] as datetime) [DATECREATED] 
From stg.[Auct_Tables_FinalView]