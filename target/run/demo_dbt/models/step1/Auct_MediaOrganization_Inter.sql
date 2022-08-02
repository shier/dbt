
  
  if object_id ('"stg"."Auct_MediaOrganization_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaOrganization_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MediaOrganization_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MediaOrganization_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_MediaOrganization_Inter__dbt_tmp_temp_view as
    
Select
	[MEDIAORGANIZATIONID] [MediaOrganizationID],
	cast([MEDIAORGANIZATIONGUID] as nvarchar(4000)) [MediaOrganizationGUID],
	[PRIMARYMEDIAATTENDEEID] [PrimaryMediaAttendeeID],
	[AUCTIONID] [AuctionID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ISATTENDING] [IsAttending],
	cast([PHONE] as nvarchar(4000)) [Phone],
	cast([FAX] as nvarchar(4000)) [Fax],
	cast([WEBSITE] as nvarchar(4000)) [WebSite],
	cast([ADDRESS1] as nvarchar(4000)) [Address1],
	cast([ADDRESS2] as nvarchar(4000)) [Address2],
	cast([CITY] as nvarchar(4000)) [City],
	cast([STATE] as nvarchar(4000)) [State],
	cast([POSTALCODE] as nvarchar(4000)) [PostalCode],
	[PHOTOSPUBLISHED] [PhotosPublished],
	cast([PRIORCOVERAGE] as nvarchar(4000)) [PriorCoverage],
	[MEDIATYPEID] [MediaTypeID],
	[DISTRIBUTIONTYPEID] [DistributionTypeID],
	cast([CIRCULATION] as nvarchar(4000)) [Circulation],
	[AUDIENCETYPEID] [AudienceTypeID],
	[IMPORT] [Import],
	cast([COUNTRYID] as nvarchar(4000)) [CountryID],
	[CREATED] [Created],
	[ACTIVE] [Active]
From stg.[Auct_MediaOrganization_Raw]
    ');

  CREATE TABLE "stg"."Auct_MediaOrganization_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MediaOrganization_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MediaOrganization_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaOrganization_Inter__dbt_tmp_temp_view"
    end


