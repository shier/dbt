{{ config(materialized='view',schema='stg')}}
Select
	[ID],[SecondstogeneRate],[ReportName],[Data],[LastUpdatedUser],[CreatedOn],[UpdatedOn],[DeletedOn],[UserID] 
From stg.[AH_Reports_Incr] 
Where [dbt_valid_to] is null