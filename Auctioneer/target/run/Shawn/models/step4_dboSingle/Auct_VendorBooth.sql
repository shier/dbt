
  
  if object_id ('"dbo"."Auct_VendorBooth__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_VendorBooth__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_VendorBooth__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_VendorBooth__dbt_tmp"
    end


   EXEC('create view dbo.Auct_VendorBooth__dbt_tmp_temp_view as
    
Select
	cast([VendorBoothID] as int) [VENDORBOOTHID],
	cast([BoothID] as int) [BOOTHID],
	cast([VendorAuctionID] as int) [VENDORAUCTIONID],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Created] as datetime) [CREATED] 
From stg.[Auct_VendorBooth_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_VendorBooth__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_VendorBooth__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_VendorBooth__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_VendorBooth__dbt_tmp_temp_view"
    end


