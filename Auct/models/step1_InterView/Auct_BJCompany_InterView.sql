{{ config(materialized='view',schema='stg')}}
Select
	[COMPANYID] [CompanyID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_BJCompany_Raw]
