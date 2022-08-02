{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarFeatureID] as int) [CarFeatureID],
	cast([Active] as bit) [Active],
	cast([WebActive] as bit) [WebActive],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created] 
From stg.[Auct_CarFeatures_FinalView]