
  
  if object_id ('"dbo"."Auct_VendorsurCharge__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_VendorsurCharge__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_VendorsurCharge__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_VendorsurCharge__dbt_tmp"
    end


   EXEC('create view dbo.Auct_VendorsurCharge__dbt_tmp_temp_view as
    
Select
	cast([VendorsurChargeID] as int) [VENDORSURCHARGEID],
	cast([VendorAuctionID] as int) [VENDORAUCTIONID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Surchagecost] as numeric(19,4)) [SURCHAGECOST] 
From stg.[Auct_VendorsurCharge_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_VendorsurCharge__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_VendorsurCharge__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_VendorsurCharge__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_VendorsurCharge__dbt_tmp_temp_view"
    end


