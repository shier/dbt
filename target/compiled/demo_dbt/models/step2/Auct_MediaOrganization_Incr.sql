
With hashData as (
		Select
			HASHBYTES('MD5', concat(CountryID, Address2, City, State, PostalCode, PriorCoverage, Circulation, MediaOrganizationGUID, Name, Phone, Fax, WebSite, Address1, Cast(AudienceTypeID as varchar), Cast(Import as varchar), Cast(PrimaryMediaAttendeeID as varchar), Cast(AuctionID as varchar), Cast(IsAttending as varchar), Cast(PhotosPublished as varchar), Cast(MediaTypeID as varchar), Cast(DistributionTypeID as varchar), Cast(Active as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MediaOrganization_Inter]
	)
Select * From hashData
