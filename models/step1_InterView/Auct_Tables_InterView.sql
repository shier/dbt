{{ config(materialized='view',schema='stg')}}
Select
	[TABLEID] [TableID],
	cast([TABLENAME] as nvarchar(4000)) [TableName],
	[USERSID] [UsersID],
	[DATECREATED] [DateCreated]
From stg.[Auct_Tables_Raw]
