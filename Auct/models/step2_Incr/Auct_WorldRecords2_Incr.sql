{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([AuctionID] as varchar), Cast([WorldRecordSales$Hagerty] as varchar), Cast([WorldRecordSales$sPortsCarmarket] as varchar), Cast([WorldRecordSalesPrice] as varchar), Cast([Lot#] as varchar), [Comments], Cast([WorldRecordID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_WorldRecords2_InterView]
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
