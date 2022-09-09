
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([ReportFormID] as varchar), Cast([ReportID] as varchar), Cast([FormID] as varchar), [EventID], Cast([PackageOrder] as varchar), Cast([AuctionID] as varchar), Cast([Active] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Report_Form_InterView]
	)
Select * From hashData

	where not exists 
	(
		select dbt_scd_id 
		from "BJAC_DW_PROD"."stg"."Auct_Report_Form_Incr" compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
