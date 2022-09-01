create view "stg"."Auct_Tables_FinalView__dbt_tmp" as
    
Select
	[TableID],[TableName],[UsersID],[DateCreated] 
From stg.[Auct_Tables_Incr] 
Where [dbt_valid_to] is null
