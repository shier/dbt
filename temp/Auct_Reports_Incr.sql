{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([ReportsID] as varchar), [ReportsCategory], [ReportsTitle], [ReportsFileName], [Auctionind], [Accountind], [Auctiondayind], [Paymentind], [Value1ind], [Value2ind], [Value3ind], [DateFromind], [Datetoind], [Value1Title], [Value1Example], [Value2Title], [Value2Example], [Value3Title], [Value3Example], [DateFromTitle], [DateFromExample], [DatetoTitle], [DatetoExample], [Description], Cast([IsexcelExport] as varchar), Cast([IsSorTable] as varchar), [Value4ind], [Value4Title], [Value4Example])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Reports_InterView]
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
