{{ config(materialized='table',schema='dbo')}}
Select
	cast([ItemTypeID] as int) [ItemTypeID],
	cast([Name] as nvarchar(512)) [ItemType],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ItemType_FinalView]