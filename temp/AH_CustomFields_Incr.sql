{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([Required] as varchar), Cast([Deferred] as varchar), Cast([Encrypted] as varchar), Cast([IncludeonInvoice] as varchar), Cast([IncludeinSalesReport] as varchar), Cast([IncludeonInvoiceasSeller] as varchar), Cast([IncludeonInvoiceasBuyer] as varchar), Cast([IncludeinSalesReportasSeller] as varchar), Cast([IncludeinSalesReportasBuyer] as varchar), Cast([ID] as varchar), Cast([Type] as varchar), Cast([DisplayOrder] as varchar), Cast([VisiBIlity] as varchar), Cast([MutaBIlity] as varchar), Cast([CreatedOn] as varchar), Cast([UpdatedOn] as varchar), Cast([DeletedOn] as varchar), [Name], [DefaultValue], [GroupName], [LastUpdatedUser])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[AH_CustomFields_InterView]
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
