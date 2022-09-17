{{ config(materialized='table',schema='dbo')}}
Select
	cast([Active] as bit) [ACTIVE],
	cast([WebActive] as bit) [WEBACTIVE],
	cast([CarFeatureID] as int) [CARFEATUREID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED] 
From stg.[Auct_CarFeatures_FinalView]