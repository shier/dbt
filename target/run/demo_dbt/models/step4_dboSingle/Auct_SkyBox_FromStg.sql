
  
  if object_id ('"dbo"."Auct_SkyBox_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SkyBox_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SkyBox_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SkyBox_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SkyBox_FromStg__dbt_tmp_temp_view as
    
Select
	cast([SkyBoxID] as int) [SkyBoxID],
	cast([AuctionSkyBoxNumber] as int) [AuctionSkyBoxNumber],
	cast([Name] as nvarchar(4000)) [Name],
	cast([BidderID] as int) [BidderID],
	cast([AuctionID] as int) [AuctionID] 
From stg.[Auct_SkyBox_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SkyBox_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SkyBox_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SkyBox_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SkyBox_FromStg__dbt_tmp_temp_view"
    end


