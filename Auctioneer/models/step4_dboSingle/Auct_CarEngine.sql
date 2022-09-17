{{ config(materialized='table',schema='dbo')}}
Select
	cast([Displacement] as numeric(18,2)) [DISPLACEMENT],
	cast([Horsepower] as numeric(18,2)) [HORSEPOWER],
	cast([CarEngineID] as int) [CARENGINEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Cylinders] as int) [CYLINDERS],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_CarEngine_FinalView]