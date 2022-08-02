{{ config(materialized='table',schema='dbo')}}
Select
	cast([SpaceSizeID] as int) [SpaceSizeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_SpaceSize_FinalView]