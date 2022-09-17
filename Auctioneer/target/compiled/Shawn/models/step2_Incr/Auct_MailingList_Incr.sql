
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat([TransactionID], [FirstName], [LastName], [Middle], [Address1], [Address2], [City], [StateProvince], [PostalCode], Cast([CountryID] as varchar), [County], Cast([EventID] as varchar), [Careof], Cast([MailListID] as varchar), Cast([Active] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_MailingList_InterView]
	)
Select * From hashData

	where not exists 
	(
		select dbt_scd_id 
		from "BJAC_DW_PROD"."stg"."Auct_MailingList_Incr" compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
