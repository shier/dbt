{{ config(materialized='view',schema='stg')}}
Select
	[ITEMID] [ItemID],
	[ESTIMATEDVALUE] [EstimatedValue],
	cast([DESCR] as nvarchar(4000)) [Descr],
	[ITEMTYPEID] [ItemTypeID],
	[ITEMSTATUSID] [ItemStatusID],
	[CONTACTID] [ContactID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[ITEMTAXTYPEID] [ItemTaxTypeID]
From stg.[Auct_Item_Raw]
