{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([No], [Name], [Name2], [Address], [Address2], [City], [State], [CountryCode], [PostalCode], [Phoneno], [Email], [HomePage], Cast([Taxliable] as varchar), [FederalIDno], [1099Code], Cast([Status] as varchar), [StatusMessage], Cast([WrotetoNavision] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NavisionVendorBuffer_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select hashValue 
		from {{ this }} compareData
		where hashData.hashValue=compareData.hashValue
	)
{% endif %}
