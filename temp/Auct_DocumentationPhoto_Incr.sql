{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([DocumentationPhotoID] as varchar), Cast([PhotoTypeID] as varchar), Cast([PhotoStatusID] as varchar), Cast([ItemID] as varchar), [FileName], [UncPath], Cast([PhotoSize] as varchar), Cast([Height] as varchar), Cast([Width] as varchar), Cast([Created] as varchar), Cast([UpdateEventID] as varchar), [TbFileName], Cast([TbPhotoSize] as varchar), [TbUncPath], Cast([TbHeight] as varchar), Cast([TbWidth] as varchar), [FullPath], [TbfullPath], Cast([WebSiteOrder] as varchar), Cast([ShowonWeb] as varchar), [WebFileName], [WebUncPath], [RejectionReason], Cast([IsMainAdvertising] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_DocumentationPhoto_InterView]
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
