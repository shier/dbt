
Select
	[ID],[ModelID],[YearFrom],[Yearto],[UserID],[MakeID],[Enabled],[CreatedOn],[UpdatedOn],[DeletedOn] 
From stg.[AH_UserAlerts_Incr] 
Where [dbt_valid_to] is null