
  
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
	cast([VendorAuctionID] as int) [VendorAuctionID],
	cast([AuctionID] as int) [AuctionID],
	cast([VendorID] as int) [VendorID],
	cast([ContractDate] as datetime) [ContractDate],
	cast([ApplicationDate] as datetime) [ApplicationDate],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([Legacy_VendorID] as int) [Legacy_VendorID],
	cast([SpecialVendorTypeID] as int) [SpecialVendorTypeID],
	cast([Spacecost] as numeric(19,4)) [Spacecost],
	cast([SpecialVendorValue] as numeric(19,4)) [SpecialVendorValue] 
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


