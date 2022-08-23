
  
  if object_id ('"dbo"."Auct_VendorsurCharge_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_VendorsurCharge_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_VendorsurCharge_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_VendorsurCharge_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_VendorsurCharge_FromStg__dbt_tmp_temp_view as
    
Select
	cast([VendorsurChargeID] as int) [VendorsurChargeID],
	cast([VendorAuctionID] as int) [VendorAuctionID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Surchagecost] as numeric(19,4)) [Surchagecost] 
From stg.[Auct_VendorsurCharge_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_VendorsurCharge_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_VendorsurCharge_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_VendorsurCharge_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_VendorsurCharge_FromStg__dbt_tmp_temp_view"
    end


