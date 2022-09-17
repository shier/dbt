
  
  if object_id ('"dbo"."Auct_ConsignerApplication__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignerApplication__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ConsignerApplication__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ConsignerApplication__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ConsignerApplication__dbt_tmp_temp_view as
    
Select
	cast([ConsignerApplictionID] as int) [CONSIGNERAPPLICTIONID],
	cast([AuctionID] as nvarchar(4000)) [AUCTIONID],
	cast([DealerLicenseNumber] as nvarchar(4000)) [DEALERLICENSENUMBER],
	cast([AuctionName] as nvarchar(4000)) [AUCTIONNAME],
	cast([DateRange] as nvarchar(4000)) [DATERANGE],
	cast([FullStateName] as nvarchar(4000)) [FULLSTATENAME],
	cast([Page1Footer] as nvarchar(4000)) [PAGE1FOOTER] 
From stg.[Auct_ConsignerApplication_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ConsignerApplication__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ConsignerApplication__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ConsignerApplication__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignerApplication__dbt_tmp_temp_view"
    end


