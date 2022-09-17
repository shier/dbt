
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([CollectionID] as varchar), Cast([ConsignmentID] as varchar), Cast([Active] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Collection_Consignment_InterView]
	)
Select * From hashData

	where not exists 
	(
		select dbt_scd_id 
		from "BJAC_DW_PROD"."stg"."Auct_Collection_Consignment_Incr" compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
