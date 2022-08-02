{{ config(materialized='table',schema='dbo')}}
Select
	cast([ItemID] as int) [ItemID],
	cast([EstimatedValue] as numeric(19,4)) [EstimatedValue],
	cast([Descr] as nvarchar(4000)) [Description],
	cast([ItemTypeID] as int) [ItemTypeID],
	cast([ItemStatusID] as int) [ItemStatusID],
	cast([ContactID] as int) [ContactID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([ItemTaxTypeID] as int) [ItemtaxTypeID] 
From stg.[Auct_Item_FinalView]