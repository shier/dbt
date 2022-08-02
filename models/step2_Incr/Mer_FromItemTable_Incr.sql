{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([TimeStamp], [Type], [Inventory_Posting_Group], [Item_Category_Code], [No_], [Description], [Search_Description], [Description_2], [Base_Unit_Of_Measure], [Price_Unit_ConVersion], Cast([No__2] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_FromItemTable_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select hashValue 
		from {{ this }} compareData
		where hashData.hashValue=compareData.hashValue
	)
{% endif %}
