
  
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
	cast([VendorBoothID] as int) [VendorBoothID],
	cast([BoothID] as int) [BoothID],
	cast([VendorAuctionID] as int) [VendorAuctionID],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Created] as datetime) [Created] 
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


