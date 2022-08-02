{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([TransactionID], [FirstName], [LastName], [Middle], [Address1], [Address2], [City], [StateProvince], [PostalCode], Cast([CountryID] as varchar), [County], Cast([EventID] as varchar), [Careof], Cast([MailListID] as varchar), Cast([Active] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MailingList_InterView]
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
