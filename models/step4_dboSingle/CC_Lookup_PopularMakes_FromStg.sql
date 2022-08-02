{{ config(materialized='table',schema='dbo')}}
Select
	cast([Make] as nvarchar(4000)) [Make],
	cast([DateinsertedUTC] as datetime) [DateinsertedUTC] 
From stg.[CC_Lookup_PopularMakes_FinalView]