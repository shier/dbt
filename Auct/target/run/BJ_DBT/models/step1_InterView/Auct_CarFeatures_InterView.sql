create view "dbo_stg"."Auct_CarFeatures_InterView__dbt_tmp" as
    
Select
	[CARFEATUREID] [CarFeatureID],
	[ACTIVE] [Active],
	[WEBACTIVE] [WebActive],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created]
From stg.[Auct_CarFeatures_Raw]
