
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([MakeID] as varchar), Cast([YearID] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Make_Year_InterView]
	)
Select * From hashData

	where not exists 
	(
		select dbt_scd_id 
		from "BJAC_DW_PROD"."stg"."Auct_Make_Year_Incr" compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
