
  
  if object_id ('"stg"."Auct_SponsorAuction_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SponsorAuction_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SponsorAuction_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SponsorAuction_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_SponsorAuction_Final__dbt_tmp_temp_view as
    
Select
	[SponsorAuctionID],[Created],[ContractSigned],[ContractStart],[ContractEnd],[SponsorID],[AuctionID],[VendorAuctionID],[UpdateEventID],[Sponsorcost],[BannerAMT],[MagadValue],[LogoonsTage],[SkyBoxText],[Magissue1],[Magissue2],[Magissue3],[Magissue4],[LogoReceived],[RVINd],[VendorSpaceind],[SkyBoxind],[RvSpaceText],[CataLogText],[VendorSpaceText],[WebLink],[BannerSize],[CataLogind],[CataLogSize],[WebLinkText],[Comments] 
From stg.[Auct_SponsorAuction_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_SponsorAuction_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SponsorAuction_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SponsorAuction_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SponsorAuction_Final__dbt_tmp_temp_view"
    end


