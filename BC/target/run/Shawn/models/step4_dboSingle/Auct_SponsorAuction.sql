
  
  if object_id ('"dbo"."Auct_SponsorAuction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SponsorAuction__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SponsorAuction__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SponsorAuction__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SponsorAuction__dbt_tmp_temp_view as
    
Select
	cast([MagadValue] as numeric(19,4)) [MAGADVALUE],
	cast([Sponsorcost] as numeric(19,4)) [SPONSORCOST],
	cast([BannerAMT] as numeric(19,4)) [BANNERAMT],
	cast([SponsorAuctionID] as int) [SPONSORAUCTIONID],
	cast([SponsorID] as int) [SPONSORID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([LogoonsTage] as nvarchar(4000)) [LOGOONSTAGE],
	cast([WebLink] as nvarchar(4000)) [WEBLINK],
	cast([VendorAuctionID] as int) [VENDORAUCTIONID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([ContractSigned] as datetime) [CONTRACTSIGNED],
	cast([ContractStart] as datetime) [CONTRACTSTART],
	cast([ContractEnd] as datetime) [CONTRACTEND],
	cast([BannerSize] as nvarchar(4000)) [BANNERSIZE],
	cast([CataLogind] as nvarchar(4000)) [CATALOGIND],
	cast([CataLogSize] as nvarchar(4000)) [CATALOGSIZE],
	cast([WebLinkText] as nvarchar(4000)) [WEBLINKTEXT],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([RVINd] as nvarchar(4000)) [RVIND],
	cast([VendorSpaceind] as nvarchar(4000)) [VENDORSPACEIND],
	cast([SkyBoxind] as nvarchar(4000)) [SKYBOXIND],
	cast([RvSpaceText] as nvarchar(4000)) [RVSPACETEXT],
	cast([CataLogText] as nvarchar(4000)) [CATALOGTEXT],
	cast([VendorSpaceText] as nvarchar(4000)) [VENDORSPACETEXT],
	cast([SkyBoxText] as nvarchar(4000)) [SKYBOXTEXT],
	cast([Magissue1] as nvarchar(4000)) [MAGISSUE1],
	cast([Magissue2] as nvarchar(4000)) [MAGISSUE2],
	cast([Magissue3] as nvarchar(4000)) [MAGISSUE3],
	cast([Magissue4] as nvarchar(4000)) [MAGISSUE4],
	cast([LogoReceived] as nvarchar(4000)) [LOGORECEIVED] 
From stg.[Auct_SponsorAuction_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SponsorAuction__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SponsorAuction__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SponsorAuction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SponsorAuction__dbt_tmp_temp_view"
    end


