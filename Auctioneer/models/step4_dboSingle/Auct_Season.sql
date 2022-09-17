{{ config(materialized='table',schema='dbo')}}
Select
	cast([SeasonID] as int) [SEASONID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Active] as nvarchar(4000)) [ACTIVE] 
From stg.[Auct_Season_FinalView]