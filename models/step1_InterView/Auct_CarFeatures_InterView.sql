{{ config(materialized='view',schema='stg')}}
Select
	[CARFEATUREID] [CarFeatureID],
	[ACTIVE] [Active],
	[WEBACTIVE] [WebActive],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created]
From stg.[Auct_CarFeatures_Raw]
