{{ config(materialized='view',schema='stg')}}
Select
	[COMPANYID] [CompanyID],
	cast([NAME] as nvarchar(4000)) [Name],
	[INDUSTRYTYPEID] [IndustryTypeID],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	cast([URL] as nvarchar(4000)) [URL],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Company_Raw]
