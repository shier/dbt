{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReportingID] as int) [ReportingID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ParentReportingID] as int) [ParentReportingID],
	cast([DataRetrievalClassName] as nvarchar(4000)) [DataRetrievalClassName],
	cast([IsActive] as bit) [IsActive],
	cast([DisplayOrder] as numeric(18,0)) [DisplayOrder] 
From stg.[Auct_Reporting_FinalView]