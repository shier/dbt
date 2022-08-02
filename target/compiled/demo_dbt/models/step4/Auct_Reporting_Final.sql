
Select
	[ReportingID],[ParentReportingID],[IsActive],[DisplayOrder],[Name],[DataRetrievalClassName] 
From stg.[Auct_Reporting_Incr] 
Where [dbt_valid_to] is null