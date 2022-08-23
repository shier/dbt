
  
  if object_id ('"dbo"."Auct_Package_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Package_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Package_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Package_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Package_FromStg__dbt_tmp_temp_view as
    
Select
	cast([PackageID] as int) [PackageID],
	cast([PackageTypeID] as int) [PackageTypeID],
	cast([PackageTypeName] as nvarchar(4000)) [PackageTypeName],
	cast([TrackingNumber] as nvarchar(4000)) [TrackingNumber],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([DateCreated] as datetime) [DateCreated],
	cast([AuctionID] as int) [AuctionID],
	cast([PackageCarrierID] as int) [PackageCarrierID],
	cast([Note] as nvarchar(4000)) [Note] 
From stg.[Auct_Package_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Package_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Package_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Package_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Package_FromStg__dbt_tmp_temp_view"
    end


