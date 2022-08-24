create view "dbo_stg"."Auct_StateProvince_InterView__dbt_tmp" as
    
Select
	cast([ABBREVIATION] as nvarchar(4000)) [Abbreviation],
	cast([FULLNAME] as nvarchar(4000)) [FullName],
	[COUNTRYID] [CountryID],
	cast([ACTIVE] as nvarchar(4000)) [Active]
From stg.[Auct_StateProvince_Raw]
