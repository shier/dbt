{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarEngineID] as int) [CarEngineID],
	cast([Displacement] as numeric(18,2)) [Displacement],
	cast([Horsepower] as numeric(18,2)) [Horsepower],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Cylinders] as int) [Cylinders],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_CarEngine_FinalView]