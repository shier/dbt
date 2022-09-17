
  
  if object_id ('"dbo"."Auct_MediaOrganization__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaOrganization__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MediaOrganization__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MediaOrganization__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MediaOrganization__dbt_tmp_temp_view as
    
Select
	cast([MediaOrganizationID] as int) [MEDIAORGANIZATIONID],
	cast([MediaOrganizationGUID] as nvarchar(4000)) [MEDIAORGANIZATIONGUID],
	cast([PrimaryMediaAttendeeID] as int) [PRIMARYMEDIAATTENDEEID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([IsAttending] as int) [ISATTENDING],
	cast([Phone] as nvarchar(4000)) [PHONE],
	cast([Fax] as nvarchar(4000)) [FAX],
	cast([WebSite] as nvarchar(4000)) [WEBSITE],
	cast([Address1] as nvarchar(4000)) [ADDRESS1],
	cast([Address2] as nvarchar(4000)) [ADDRESS2],
	cast([City] as nvarchar(4000)) [CITY],
	cast([State] as nvarchar(4000)) [STATE],
	cast([PostalCode] as nvarchar(4000)) [POSTALCODE],
	cast([PhotosPublished] as int) [PHOTOSPUBLISHED],
	cast([PriorCoverage] as nvarchar(4000)) [PRIORCOVERAGE],
	cast([MediaTypeID] as int) [MEDIATYPEID],
	cast([DistributionTypeID] as int) [DISTRIBUTIONTYPEID],
	cast([Circulation] as nvarchar(4000)) [CIRCULATION],
	cast([AudienceTypeID] as int) [AUDIENCETYPEID],
	cast([Import] as int) [IMPORT],
	cast([CountryID] as nvarchar(4000)) [COUNTRYID],
	cast([Created] as datetime) [CREATED],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_MediaOrganization_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MediaOrganization__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MediaOrganization__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MediaOrganization__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaOrganization__dbt_tmp_temp_view"
    end


