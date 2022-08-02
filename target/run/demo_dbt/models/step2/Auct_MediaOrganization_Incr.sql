
      
  
  if object_id ('"stg"."Auct_MediaOrganization_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaOrganization_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MediaOrganization_Incr"','U') is not null
    begin
    drop table "stg"."Auct_MediaOrganization_Incr"
    end


   EXEC('create view stg.Auct_MediaOrganization_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(CountryID, Address2, City, State, PostalCode, PriorCoverage, Circulation, MediaOrganizationGUID, Name, Phone, Fax, WebSite, Address1, Cast(AudienceTypeID as varchar), Cast(Import as varchar), Cast(PrimaryMediaAttendeeID as varchar), Cast(AuctionID as varchar), Cast(IsAttending as varchar), Cast(PhotosPublished as varchar), Cast(MediaTypeID as varchar), Cast(DistributionTypeID as varchar), Cast(Active as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MediaOrganization_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_MediaOrganization_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MediaOrganization_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_MediaOrganization_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaOrganization_Incr_temp_view"
    end



  