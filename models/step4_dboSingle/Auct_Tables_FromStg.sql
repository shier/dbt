{{ config(materialized='table',schema='dbo')}}
Select
	cast([TableID] as int) [TableID],
	cast([TableName] as nvarchar(4000)) [TableName],
	cast([UsersID] as int) [UsersID],
	cast([DateCreated] as datetime) [DateCreated] 
From stg.[Auct_Tables_FinalView]