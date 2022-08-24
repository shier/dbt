{{ config(materialized='view',schema='stg')}}
Select
	[ReportingID],[Name],[ParentReportingID],[DataRetrievalClassName],[IsActive],[DisplayOrder] 
From stg.[Auct_Reporting_Incr] 
Where [dbt_valid_to] is null