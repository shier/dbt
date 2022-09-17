{{ config(materialized='table',schema='dbo')}}
Select
	cast([PathID] as int) [PATHID],
	cast([Path] as nvarchar(4000)) [PATH],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_Path_FinalView]