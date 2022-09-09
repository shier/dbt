{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([ShowonWeb] as varchar), Cast([DefaultAmount] as varchar), Cast([DefaultPercentage] as varchar), Cast([FeeTypeID] as varchar), [Name], Cast([FeeCategoryID] as varchar), Cast([FeePayerID] as varchar), Cast([Created] as varchar), Cast([UpdateEventID] as varchar), Cast([TaxRateID] as varchar), Cast([AuctionID] as varchar), [InActive], Cast([ProcessorID] as varchar), Cast([UseMultiplier] as varchar), [DebitProcessor], [CreditProcessor], [PaymentProcessor], [RefundProcessor], Cast([WebStartDate] as varchar), Cast([WebEndDate] as varchar), [Amenities], [SectionTitle], [ExpirationMessage], [FeeTypeGUID], Cast([ApplicationReportID] as varchar), Cast([OnlineApplicationReportID] as varchar), [DocumentID], [BCProcessFor], [BCdocumentType])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_FeeType_InterView]
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
