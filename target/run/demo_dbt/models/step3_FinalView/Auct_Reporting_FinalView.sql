create view "stg"."Auct_Reporting_FinalView__dbt_tmp" as
    
Select
	[ReportingID],[Name],[ParentReportingID],[DataRetrievalClassName],[IsActive],[DisplayOrder] 
From stg.[Auct_Reporting_Incr] 
Where [dbt_valid_to] is null
