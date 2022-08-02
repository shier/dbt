
  
  if object_id ('"stg"."Auct_DriverInFormation_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DriverInFormation_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_DriverInFormation_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_DriverInFormation_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_DriverInFormation_Inter__dbt_tmp_temp_view as
    
Select
	DRIVERINFORMATIONID DriverInFormationID,
	CONSIGNMENTID ConsignmentID,
	TENTLOCATIONID TentLocationID,
	DELIVERYCARRIERID DeLiveryCarrierID,
	CHECKEDINUSERSID CheckedInUsersID,
	CHECKEDOUTUSERSID CheckedOutUsersID,
	SHIPPEDCARRIERID ShippedCarrierID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(SPAREPARTS as nvarchar(4000)) SpareParts,
	cast(VINLOCATION as nvarchar(4000)) VINLocation,
	cast(SHIPPEDCARRIEROTHER as nvarchar(4000)) ShippedCarrierOther,
	cast(CHECKEDOUTNAME as nvarchar(4000)) CheckedOutName,
	cast(BIDDERNUMBER as nvarchar(4000)) BidderNumber,
	cast(LICENSENUMBER as nvarchar(4000)) LicenseNumber,
	cast(TENTSPACENUMBER as nvarchar(4000)) TentSpaceNumber,
	cast(DELIVERYCARRIEROTHER as nvarchar(4000)) DeLiveryCarrierOther
From Auct_DriverInFormation_Raw
    ');

  CREATE TABLE "stg"."Auct_DriverInFormation_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_DriverInFormation_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_DriverInFormation_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DriverInFormation_Inter__dbt_tmp_temp_view"
    end


