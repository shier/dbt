
  
  if object_id ('"stg"."Auct_SponsorAuction_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SponsorAuction_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SponsorAuction_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SponsorAuction_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SponsorAuction_Inter__dbt_tmp_temp_view as
    
Select
	CREATED Created,
	CONTRACTSIGNED ContractSigned,
	CONTRACTSTART ContractStart,
	CONTRACTEND ContractEnd,
	SPONSORAUCTIONID SponsorAuctionID,
	SPONSORID SponsorID,
	AUCTIONID AuctionID,
	VENDORAUCTIONID VendorAuctionID,
	UPDATEEVENTID UpdateEventID,
	SPONSORCOST Sponsorcost,
	BANNERAMT BannerAMT,
	MAGADVALUE MagadValue,
	cast(LOGOONSTAGE as nvarchar(4000)) LogoonsTage,
	cast(SKYBOXTEXT as nvarchar(4000)) SkyBoxText,
	cast(MAGISSUE1 as nvarchar(4000)) Magissue1,
	cast(MAGISSUE2 as nvarchar(4000)) Magissue2,
	cast(MAGISSUE3 as nvarchar(4000)) Magissue3,
	cast(MAGISSUE4 as nvarchar(4000)) Magissue4,
	cast(LOGORECEIVED as nvarchar(4000)) LogoReceived,
	cast(RVIND as nvarchar(4000)) RVINd,
	cast(VENDORSPACEIND as nvarchar(4000)) VendorSpaceind,
	cast(SKYBOXIND as nvarchar(4000)) SkyBoxind,
	cast(RVSPACETEXT as nvarchar(4000)) RvSpaceText,
	cast(CATALOGTEXT as nvarchar(4000)) CataLogText,
	cast(VENDORSPACETEXT as nvarchar(4000)) VendorSpaceText,
	cast(WEBLINK as nvarchar(4000)) WebLink,
	cast(BANNERSIZE as nvarchar(4000)) BannerSize,
	cast(CATALOGIND as nvarchar(4000)) CataLogind,
	cast(CATALOGSIZE as nvarchar(4000)) CataLogSize,
	cast(WEBLINKTEXT as nvarchar(4000)) WebLinkText,
	cast(COMMENTS as nvarchar(4000)) Comments
From Auct_SponsorAuction_Raw
    ');

  CREATE TABLE "stg"."Auct_SponsorAuction_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SponsorAuction_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SponsorAuction_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SponsorAuction_Inter__dbt_tmp_temp_view"
    end


