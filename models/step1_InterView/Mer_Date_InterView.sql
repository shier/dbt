{{ config(materialized='view',schema='stg')}}
Select
	[DATEID] [DateID],
	[DATE] [Date]
From stg.[Mer_Date_Raw]
