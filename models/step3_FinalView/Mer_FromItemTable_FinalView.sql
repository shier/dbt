{{ config(materialized='view',schema='stg')}}
Select
	[TimeStamp],[Type],[Inventory_Posting_Group],[Item_Category_Code],[No_],[Description],[Search_Description],[Description_2],[Base_Unit_Of_Measure],[Price_Unit_ConVersion],[No__2] 
From [Mer_FromItemTable_Incr]