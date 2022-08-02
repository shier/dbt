{{ config(materialized='table',schema='dbo')}}
Select
	cast([SparePartsTypeID] as int) [SparePartsTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([InActive] as nvarchar(4000)) [InActive],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_SparePartsType_FinalView]