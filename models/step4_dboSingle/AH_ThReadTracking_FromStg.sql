{{ config(materialized='table',schema='dbo')}}
Select
	cast([ThReadGUID] as nvarchar(4000)) [ThReadGUID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DaTestamp] as datetime) [DaTestamp],
	cast([PrimarythRead] as bit) [PrimarythRead] 
From stg.[AH_ThReadTracking_FinalView]