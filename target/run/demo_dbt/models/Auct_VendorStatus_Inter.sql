
  
  if object_id ('"stg"."Auct_VendorStatus_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_VendorStatus_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_VendorStatus_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_VendorStatus_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_VendorStatus_Inter__dbt_tmp_temp_view as
    
Select
	VENDORSTATUSID VendorStatusID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name
From Auct_VendorStatus_Raw
    ');

  CREATE TABLE "stg"."Auct_VendorStatus_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_VendorStatus_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_VendorStatus_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_VendorStatus_Inter__dbt_tmp_temp_view"
    end


