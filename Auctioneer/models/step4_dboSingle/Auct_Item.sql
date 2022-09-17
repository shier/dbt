{{ config(materialized='table',schema='dbo')}}
Select
	cast([EstimatedValue] as numeric(19,4)) [ESTIMATEDVALUE],
	cast([ItemID] as int) [ITEMID],
	cast([Descr] as nvarchar(4000)) [DESCR],
	cast([ItemTypeID] as int) [ITEMTYPEID],
	cast([ItemStatusID] as int) [ITEMSTATUSID],
	cast([ContactID] as int) [CONTACTID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([ItemTaxTypeID] as int) [ITEMTAXTYPEID] 
From stg.[Auct_Item_FinalView]