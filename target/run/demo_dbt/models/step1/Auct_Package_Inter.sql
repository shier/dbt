
  
  if object_id ('"stg"."Auct_Package_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Package_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Package_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Package_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Package_Inter__dbt_tmp_temp_view as
    
Select
	[PACKAGEID] [PackageID],
	[PACKAGETYPEID] [PackageTypeID],
	cast([PACKAGETYPENAME] as nvarchar(4000)) [PackageTypeName],
	cast([TRACKINGNUMBER] as nvarchar(4000)) [TrackingNumber],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[DATECREATED] [DateCreated],
	[AUCTIONID] [AuctionID],
	[PACKAGECARRIERID] [PackageCarrierID],
	cast([NOTE] as nvarchar(4000)) [Note]
From stg.[Auct_Package_Raw]
    ');

  CREATE TABLE "stg"."Auct_Package_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Package_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Package_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Package_Inter__dbt_tmp_temp_view"
    end

