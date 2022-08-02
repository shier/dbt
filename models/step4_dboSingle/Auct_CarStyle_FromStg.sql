{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarStyleID] as int) [CarstyleID],
	cast([Name] as nvarchar(1000)) [CarStyle],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Active] as bit) [IsActive] 
From stg.[Auct_CarStyle_FinalView]