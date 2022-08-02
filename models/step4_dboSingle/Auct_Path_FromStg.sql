{{ config(materialized='table',schema='dbo')}}
Select
	cast([PathID] as int) [PathID],
	cast([Path] as nvarchar(4000)) [Path],
	cast([Active] as int) [Active] 
From stg.[Auct_Path_FinalView]