create view "stg"."AH_Tiers_FinalView__dbt_tmp" as
    
Select
	[ID],[Upperboundexclusive],[Value],[Lowerboundinclusive],[CreatedOn],[UpdatedOn],[DeletedOn],[FeescheduleID],[ValueType],[LastUpdatedUser] 
From stg.[AH_Tiers_Incr] 
Where [dbt_valid_to] is null
