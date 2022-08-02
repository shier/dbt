{{ config(materialized='view',schema='stg')}}
Select
	[ID],[LastUpdatedUser],[PrimaryImageURI],[OwnerUserName],[CurrentListingActionUserName],[Title],[Description],[SubTitle],[Location],[Status],[CreatedOn],[UpdatedOn],[DeletedOn],[Enddttm],[Startdttm],[AutoreListrEMAining],[CurrentQuantity],[OriginalQuantity],[ReListiteration],[LotID],[AcceptedActionCount],[OwnerID],[ListingTypeID],[Duration],[Version],[CurrencyID],[PrimaryCategoryID],[CurrentListingActionID],[OfferCount],[OriginalreListCount],[Hits],[CurrentPrice],[Increment],[OriginalPrice] 
From stg.[AH_Listings_Incr] 
Where [dbt_valid_to] is null