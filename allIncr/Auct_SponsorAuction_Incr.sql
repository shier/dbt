{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([MagadValue] as varchar), Cast([Sponsorcost] as varchar), Cast([BannerAMT] as varchar), Cast([SponsorAuctionID] as varchar), Cast([SponsorID] as varchar), Cast([AuctionID] as varchar), [LogoonsTage], [WebLink], Cast([VendorAuctionID] as varchar), Cast([Created] as varchar), Cast([UpdateEventID] as varchar), Cast([ContractSigned] as varchar), Cast([ContractStart] as varchar), Cast([ContractEnd] as varchar), [BannerSize], [CataLogind], [CataLogSize], [WebLinkText], [Comments], [RVINd], [VendorSpaceind], [SkyBoxind], [RvSpaceText], [CataLogText], [VendorSpaceText], [SkyBoxText], [Magissue1], [Magissue2], [Magissue3], [Magissue4], [LogoReceived])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_SponsorAuction_InterView]
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
