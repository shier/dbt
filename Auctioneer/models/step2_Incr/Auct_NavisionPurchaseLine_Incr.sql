{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([DocumentType] as varchar), [AuctionDocumentno], Cast([Lneno] as varchar), Cast([Type] as varchar), [No], [Description], [Description2], Cast([Quantity] as varchar), Cast([DirectUnitcostexclTax] as varchar), Cast([Status] as varchar), [StatusMessage], [Globaldim1Code], [Globaldim2Code], [ShortCutdim4Code], [ShortCutdim5Code], [ShortCutdim8Code], [ShortCutdim3Code], [BusinessUnit], Cast([WrotetoNavision] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_NavisionPurchaseLine_InterView]
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
