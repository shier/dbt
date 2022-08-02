
Select
	ParentReportingID ParentReportingID,
	ReportingID ReportingID,
	IsActive IsActive,
	DisplayOrder DisplayOrder,
	cast(Name as nvarchar(4000)) Name,
	cast(DataRetrievalClassName as nvarchar(4000)) DataRetrievalClassName
From Auct_Reporting_Raw