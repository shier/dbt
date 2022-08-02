
  
  if object_id ('"stg"."Auct_ConsignerApplication_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConsignerApplication_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ConsignerApplication_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ConsignerApplication_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ConsignerApplication_Inter__dbt_tmp_temp_view as
    
Select
	[CONSIGNERAPPLICTIONID] [ConsignerApplictionID],
	cast([AUCTIONID] as nvarchar(4000)) [AuctionID],
	cast([DEALERLICENSENUMBER] as nvarchar(4000)) [DealerLicenseNumber],
	cast([AUCTIONNAME] as nvarchar(4000)) [AuctionName],
	cast([DATERANGE] as nvarchar(4000)) [DateRange],
	cast([FULLSTATENAME] as nvarchar(4000)) [FullStateName],
	cast([PAGE1FOOTER] as nvarchar(4000)) [Page1Footer]
From stg.[Auct_ConsignerApplication_Raw]
    ');

  CREATE TABLE "stg"."Auct_ConsignerApplication_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ConsignerApplication_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ConsignerApplication_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConsignerApplication_Inter__dbt_tmp_temp_view"
    end


