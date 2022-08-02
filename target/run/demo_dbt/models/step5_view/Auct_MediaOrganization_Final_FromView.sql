
  
  if object_id ('"dbo"."Auct_MediaOrganization_Final_FromView__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaOrganization_Final_FromView__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MediaOrganization_Final_FromView__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MediaOrganization_Final_FromView__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MediaOrganization_Final_FromView__dbt_tmp_temp_view as
    
Select
	[MediaOrganizationID],[MediaOrganizationGUID],[PrimaryMediaAttendeeID],[AuctionID],[Name],[IsAttending],[Phone],[Fax],[WebSite],[Address1],[Address2],[City],[State],[PostalCode],[PhotosPublished],[PriorCoverage],[MediaTypeID],[DistributionTypeID],[Circulation],[AudienceTypeID],[Import],[CountryID],[Created],[Active] 
From stg.[Auct_MediaOrganization_Final_View]
    ');

  CREATE TABLE "dbo"."Auct_MediaOrganization_Final_FromView__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MediaOrganization_Final_FromView__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MediaOrganization_Final_FromView__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaOrganization_Final_FromView__dbt_tmp_temp_view"
    end


