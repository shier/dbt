create view "stg"."Auct_City_InterView__dbt_tmp" as
    
Select
	[CITYID] [CityID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([COUNTY] as nvarchar(4000)) [County],
	cast([STATE] as nvarchar(4000)) [State],
	cast([STATEABBREVIATION] as nvarchar(4000)) [StateAbbreviation],
	cast([POSTALCODE] as nvarchar(4000)) [PostalCode]
From stg.[Auct_City_Raw]
