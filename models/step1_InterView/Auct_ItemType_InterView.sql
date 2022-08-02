{{ config(materialized='view',schema='stg')}}
Select
	[ITEMTYPEID] [ItemTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ItemType_Raw]
