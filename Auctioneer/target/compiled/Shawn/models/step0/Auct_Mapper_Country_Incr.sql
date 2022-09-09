
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([MaptoID] as varchar), [Name])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Mapper_Country_InterView]
	)
Select * From hashData
