{{ config(materialized='view',schema='stg')}}
Select
	cast([RESERVETYPEID] as nvarchar(4000)) [ReserveTypeID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_ReserveType_Raw]
