create view "dbo_stg"."Auct_Tables_InterView__dbt_tmp" as
    
Select
	[TABLEID] [TableID],
	cast([TABLENAME] as nvarchar(4000)) [TableName],
	[USERSID] [UsersID],
	[DATECREATED] [DateCreated]
From stg.[Auct_Tables_Raw]
