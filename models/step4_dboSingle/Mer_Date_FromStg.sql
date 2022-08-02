{{ config(materialized='table',schema='dbo')}}
Select
	cast([DateID] as int) [DateID],
	cast([Date] as date) [Date] 
From stg.[Mer_Date_FinalView]