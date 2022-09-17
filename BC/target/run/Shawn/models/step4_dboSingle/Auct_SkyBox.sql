
  
  if object_id ('"dbo"."Auct_SkyBox__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SkyBox__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SkyBox__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SkyBox__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SkyBox__dbt_tmp_temp_view as
    
Select
	cast([SkyBoxID] as int) [SKYBOXID],
	cast([AuctionSkyBoxNumber] as int) [AUCTIONSKYBOXNUMBER],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([BidderID] as int) [BIDDERID],
	cast([AuctionID] as int) [AUCTIONID] 
From stg.[Auct_SkyBox_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SkyBox__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SkyBox__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SkyBox__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SkyBox__dbt_tmp_temp_view"
    end


