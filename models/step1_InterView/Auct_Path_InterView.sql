{{ config(materialized='view',schema='stg')}}
Select
	[PATHID] [PathID],
	cast([PATH] as nvarchar(4000)) [Path],
	[ACTIVE] [Active]
From stg.[Auct_Path_Raw]
