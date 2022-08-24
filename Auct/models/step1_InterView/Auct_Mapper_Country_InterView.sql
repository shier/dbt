{{ config(materialized='view',schema='stg')}}
Select
	[MAPTOID] [MaptoID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_Mapper_Country_Raw]
