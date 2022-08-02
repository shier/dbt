{{ config(materialized='table',schema='dbo')}}
Select
	cast([SKU] as nvarchar(4000)) [SKU],
	cast([Price] as numeric(194)) [Price],
	cast([Inventory] as numeric(194)) [Inventory],
	cast([IsTest] as int) [IsTest],
	cast([CreatedDate] as datetime) [CreatedDate],
	cast([Updateddate] as datetime) [Updateddate],
	cast([RemovedDate] as datetime) [RemovedDate] 
From stg.[Mer_NavInventory_FinalView]