
Select
	[ID],[CurrentPrice],[Increment],[OriginalPrice],[Title],[Description],[CurrentListingActionUserName],[SubTitle],[Location],[Status],[LastUpdatedUser],[PrimaryImageURI],[OwnerUserName],[DeletedOn],[Enddttm],[Startdttm],[CreatedOn],[UpdatedOn],[LotID],[AcceptedActionCount],[CurrentListingActionID],[OfferCount],[CurrencyID],[PrimaryCategoryID],[AutoreListrEMAining],[CurrentQuantity],[OriginalQuantity],[ReListiteration],[OriginalreListCount],[Hits],[OwnerID],[ListingTypeID],[Duration],[Version] 
From stg.[AH_Listings_Incr] 
Where [dbt_valid_to] is null