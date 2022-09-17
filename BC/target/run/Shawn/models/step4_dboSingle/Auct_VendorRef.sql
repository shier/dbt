
  
  if object_id ('"dbo"."Auct_VendorRef__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_VendorRef__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_VendorRef__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_VendorRef__dbt_tmp"
    end


   EXEC('create view dbo.Auct_VendorRef__dbt_tmp_temp_view as
    
Select
	cast([OldVendorID] as int) [OLDVENDORID],
	cast([NewVendorID] as int) [NEWVENDORID],
	cast([VendorAuctionID] as int) [VENDORAUCTIONID] 
From stg.[Auct_VendorRef_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_VendorRef__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_VendorRef__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_VendorRef__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_VendorRef__dbt_tmp_temp_view"
    end


