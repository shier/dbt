
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([ID] as varchar), [ExpirationMonth], [ExpirationYear], Cast([CreditCardTypeID] as varchar), Cast([UserID] as varchar), Cast([AddressID] as varchar), Cast([CreatedOn] as varchar), Cast([UpdatedOn] as varchar), Cast([DeletedOn] as varchar), [CardNumber], [LastUpdatedUser], [LastFourdigits], [Description])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[AH_CreditCards_InterView]
	)
Select * From hashData

	where not exists 
	(
		select dbt_scd_id 
		from "BJAC_DW_PROD"."dbo_stg"."AH_CreditCards_Incr" compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
