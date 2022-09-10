
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([OptimisticLockField] as varchar), [Roles], [Users], [OID])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_SecURItySystemUserusers_SecuritysystemRoleroles_InterView]
	)
Select * From hashData

	where not exists 
	(
		select dbt_scd_id 
		from "BJAC_DW_PROD"."stg"."CC_SecURItySystemUserusers_SecuritysystemRoleroles_Incr" compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
