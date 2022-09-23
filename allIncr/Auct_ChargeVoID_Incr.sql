{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([Amount] as varchar), Cast([UnitPrice] as varchar), Cast([ChargeVoidID] as varchar), Cast([ChargeID] as varchar), Cast([FeeTypeID] as varchar), Cast([Created] as varchar), Cast([UpdateEventID] as varchar), Cast([InvoiceID] as varchar), [Comments], [IsTaxable], Cast([ConsignmentID] as varchar), Cast([BidderID] as varchar), Cast([DealerID] as varchar), Cast([VendorID] as varchar), Cast([MediaID] as varchar), Cast([SponsorID] as varchar), Cast([UserID] as varchar), Cast([CanCancel] as varchar), Cast([CanceledByChargeID] as varchar), Cast([CanceledChargeID] as varchar), Cast([ReservationID] as varchar), [PEndingNavision], [OverrideReason], Cast([ApprovalStateID] as varchar), Cast([ApprovedByUserID] as varchar), [RejectionReason], Cast([ActionDate] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_ChargeVoID_InterView]
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
