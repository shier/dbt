{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat([ID], [Title], [Bodyhtml], [Vendor], [Options2Name], [Options2Values], [Options3Name], [Options3Values], [ProductType], [Handle], [Tags], [Publishedscope], [Options1Name], [Options1Values], Cast([PublishedDate] as varchar), Cast([CreatedDate] as varchar), Cast([Updateddate] as varchar), Cast([RemovedDate] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Mer_ShopifyProducts_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select dbt_scd_id 
		from {{ this }} compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
{% endif %}
