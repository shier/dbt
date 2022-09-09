
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([Created_Date] as varchar), [Agreement_Status], [Recipient_1_Name], [Recipient_1_Email], [Recipient_1_Role])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_BidderImportFromAdobe_temp_InterView]
	)
Select * From hashData

	where not exists 
	(
		select dbt_scd_id 
		from "BJAC_DW_PROD"."stg"."Auct_BidderImportFromAdobe_temp_Incr" compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
