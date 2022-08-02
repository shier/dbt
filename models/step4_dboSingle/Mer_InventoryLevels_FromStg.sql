{{ config(materialized='table',schema='dbo')}}
Select
	cast([Count] as numeric(194)) [Count],
	cast([SKU] as nvarchar(4000)) [SKU] 
From stg.[Mer_InventoryLevels_FinalView]