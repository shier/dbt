{{ config(materialized='view',schema='stg')}}
Select
	[ReportingID] [ReportingID],
	cast([Name] as nvarchar(4000)) [Name],
	[ParentReportingID] [ParentReportingID],
	cast([DataRetrievalClassName] as nvarchar(4000)) [DataRetrievalClassName],
	[IsActive] [IsActive],
	[DisplayOrder] [DisplayOrder]
From stg.[Auct_Reporting_Raw]
