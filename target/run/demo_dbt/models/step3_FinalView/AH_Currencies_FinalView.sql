create view "stg"."AH_Currencies_FinalView__dbt_tmp" as
    
Select
	[ID],[Code],[LastUpdatedUser],[CreatedOn],[UpdatedOn],[DeletedOn],[ConVersiontousd] 
From stg.[AH_Currencies_Incr] 
Where [dbt_valid_to] is null