create view "stg"."AH_Reports_FinalView__dbt_tmp" as
    
Select
	[ID],[SecondstogeneRate],[ReportName],[Data],[LastUpdatedUser],[CreatedOn],[UpdatedOn],[DeletedOn],[UserID] 
From stg.[AH_Reports_Incr] 
Where [dbt_valid_to] is null
