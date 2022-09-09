{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([JournalID] as varchar), Cast([AuctionID] as varchar), Cast([ProjectID] as varchar), Cast([Ln] as varchar), Cast([AccountID] as varchar), Cast([CustomerAccountID] as varchar), Cast([TimeCreated] as varchar), [JournalType], [DepositID], Cast([CarConsignmentID] as varchar), Cast([InvoiceID] as varchar), Cast([BidderID] as varchar), Cast([DealerID] as varchar), Cast([VendorID] as varchar), Cast([MediaID] as varchar), Cast([SponsorID] as varchar), Cast([VendorSpaceID] as varchar), Cast([InventoryID] as varchar), [ContactName], [Address], [City], [StateProvince], [PostalCode], Cast([Country] as varchar), [Phoneac], [Phone], [Description], Cast([PaymentMethod] as varchar), [CheckNumber], [CreditCardNumber], [CreditCardExp], [Comments], Cast([DateCreated] as varchar), [CreatedBy], Cast([DateModified] as varchar), [ModifiedBy], [ServerCreatedBy], [ServerModifiedBy], [Status], Cast([Credit] as varchar), Cast([Debit] as varchar), Cast([Rn] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Journal_InterView]
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
