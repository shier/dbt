create view "dbo_stg"."Auct_BJCompany_InterView__dbt_tmp" as
    
Select
	[COMPANYID] [CompanyID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_BJCompany_Raw]
