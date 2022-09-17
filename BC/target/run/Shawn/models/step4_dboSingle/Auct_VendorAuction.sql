
  
  if object_id ('"dbo"."Auct_VendorAuction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_VendorAuction__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_VendorAuction__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_VendorAuction__dbt_tmp"
    end


   EXEC('create view dbo.Auct_VendorAuction__dbt_tmp_temp_view as
    
Select
	cast([VendorAuctionID] as int) [VENDORAUCTIONID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([VendorID] as int) [VENDORID],
	cast([ContractDate] as datetime) [CONTRACTDATE],
	cast([ApplicationDate] as datetime) [APPLICATIONDATE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([Legacy_VendorID] as int) [LEGACY_VENDORID],
	cast([SpecialVendorTypeID] as int) [SPECIALVENDORTYPEID],
	cast([Spacecost] as numeric(19,4)) [SPACECOST],
	cast([SpecialVendorValue] as numeric(19,4)) [SPECIALVENDORVALUE] 
From stg.[Auct_VendorAuction_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_VendorAuction__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_VendorAuction__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_VendorAuction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_VendorAuction__dbt_tmp_temp_view"
    end


