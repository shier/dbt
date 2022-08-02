{{ config(materialized='view',schema='stg')}}
Select
	cast([Make] as nvarchar(4000)) [Make],
	[DateInsertedUTC] [DateinsertedUTC]
From stg.[CC_Lookup_PopularMakes_Raw]
