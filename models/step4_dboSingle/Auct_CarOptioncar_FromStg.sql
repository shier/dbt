{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarOptioncarID] as int) [CarOptionCarID],
	cast([CarOptionID] as int) [CarOptionID],
	cast([CarID] as int) [CarID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_CarOptioncar_FinalView]