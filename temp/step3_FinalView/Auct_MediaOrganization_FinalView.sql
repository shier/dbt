{{ config(materialized='view',schema='stg')}}
Select
	[MediaOrganizationID],[MediaOrganizationGUID],[PrimaryMediaAttendeeID],[AuctionID],[Name],[IsAttending],[Phone],[Fax],[WebSite],[Address1],[Address2],[City],[State],[PostalCode],[PhotosPublished],[PriorCoverage],[MediaTypeID],[DistributionTypeID],[Circulation],[AudienceTypeID],[Import],[CountryID],[Created],[Active] 
From stg.[Auct_MediaOrganization_Incr] 
Where [dbt_valid_to] is null