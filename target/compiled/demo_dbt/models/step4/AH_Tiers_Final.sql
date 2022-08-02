
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[FeescheduleID],[ValueType],[LastUpdatedUser],[Lowerboundinclusive],[Upperboundexclusive],[Value] 
From stg.[AH_Tiers_Incr] 
Where [dbt_valid_to] is null