
  
  if object_id ('"dbo"."Auct_MediaOrganization_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaOrganization_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MediaOrganization_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MediaOrganization_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MediaOrganization_FromStg__dbt_tmp_temp_view as
    
Select
	cast([MediaOrganizationID] as int) [MediaOrganizationID],
	cast([MediaOrganizationGUID] as nvarchar(4000)) [MediaOrganizationGUID],
	cast([PrimaryMediaAttendeeID] as int) [PrimaryMediaAttendeeID],
	cast([AuctionID] as int) [AuctionID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([IsAttending] as int) [IsAttending],
	cast([Phone] as nvarchar(4000)) [Phone],
	cast([Fax] as nvarchar(4000)) [Fax],
	cast([WebSite] as nvarchar(4000)) [WebSite],
	cast([Address1] as nvarchar(4000)) [Address1],
	cast([Address2] as nvarchar(4000)) [Address2],
	cast([City] as nvarchar(4000)) [City],
	cast([State] as nvarchar(4000)) [State],
	cast([PostalCode] as nvarchar(4000)) [PostalCode],
	cast([PhotosPublished] as int) [PhotosPublished],
	cast([PriorCoverage] as nvarchar(4000)) [PriorCoverage],
	cast([MediaTypeID] as int) [MediaTypeID],
	cast([DistributionTypeID] as int) [DistributionTypeID],
	cast([Circulation] as nvarchar(4000)) [Circulation],
	cast([AudienceTypeID] as int) [AudienceTypeID],
	cast([Import] as int) [Import],
	cast([CountryID] as nvarchar(4000)) [CountryID],
	cast([Created] as datetime) [Created],
	cast([Active] as bit) [Active] 
From stg.[Auct_MediaOrganization_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MediaOrganization_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MediaOrganization_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MediaOrganization_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaOrganization_FromStg__dbt_tmp_temp_view"
    end


