create view "dbo_stg"."Auct_Country_InterView__dbt_tmp" as
    
Select
	[COUNTRYID] [CountryID],
	cast([NAME] as nvarchar(4000)) [Name],
	[COUNTRYCODE] [CountryCode],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[DISPLAYORDER] [DisplayOrder],
	cast([SYNCHID] as nvarchar(4000)) [SynchID]
From stg.[Auct_Country_Raw]
