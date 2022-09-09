{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([DocumentType] as varchar), [AuctionDocumentno], [SelltoCustomerno], [BilltoCustomerno], [YourReference], Cast([DocumentDate] as varchar), Cast([PostingDate] as varchar), Cast([ShipmentDate] as varchar), Cast([DueDate] as varchar), Cast([Status] as varchar), [StatusMessage], Cast([PaymentDate] as varchar), Cast([Imported] as varchar), [Jobno], [ExternalDocumentno], [Lotno], [AuctionID], [GlobalDimension1Code], [GlobalDimension2Code], [BusinessUnit], Cast([WrotetoNavision] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_NavisionSalesHeader_InterView]
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
