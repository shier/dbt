
  
  if object_id ('"stg"."Auct_PackageCarrier_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PackageCarrier_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_PackageCarrier_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_PackageCarrier_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_PackageCarrier_Inter__dbt_tmp_temp_view as
    
Select
	PACKAGECARRIERID PackageCarrierID,
	ACTIVE Active,
	cast(NAME as nvarchar(4000)) Name,
	cast(TRACKINGURL as nvarchar(4000)) TrackingURL
From Auct_PackageCarrier_Raw
    ');

  CREATE TABLE "stg"."Auct_PackageCarrier_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_PackageCarrier_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_PackageCarrier_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PackageCarrier_Inter__dbt_tmp_temp_view"
    end


