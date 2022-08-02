{{ config(materialized='table',schema='dbo')}}
Select
	cast([SeasonID] as int) [SeasonID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as nvarchar(4000)) [Active] 
From stg.[Auct_Season_FinalView]