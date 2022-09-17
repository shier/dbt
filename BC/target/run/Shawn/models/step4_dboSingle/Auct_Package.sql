
  
  if object_id ('"dbo"."Auct_Package__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Package__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Package__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Package__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Package__dbt_tmp_temp_view as
    
Select
	cast([PackageID] as int) [PACKAGEID],
	cast([PackageTypeID] as int) [PACKAGETYPEID],
	cast([PackageTypeName] as nvarchar(4000)) [PACKAGETYPENAME],
	cast([TrackingNumber] as nvarchar(4000)) [TRACKINGNUMBER],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([DateCreated] as datetime) [DATECREATED],
	cast([AuctionID] as int) [AUCTIONID],
	cast([PackageCarrierID] as int) [PACKAGECARRIERID],
	cast([Note] as nvarchar(4000)) [NOTE] 
From stg.[Auct_Package_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Package__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Package__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Package__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Package__dbt_tmp_temp_view"
    end


