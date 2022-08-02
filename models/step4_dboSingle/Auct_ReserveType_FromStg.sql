{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReserveTypeID] as nvarchar(4000)) [ReserveTypeID],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_ReserveType_FinalView]