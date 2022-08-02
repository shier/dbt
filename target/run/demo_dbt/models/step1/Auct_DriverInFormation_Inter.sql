
  
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
	[DRIVERINFORMATIONID] [DriverInFormationID],
	[CONSIGNMENTID] [ConsignmentID],
	[TENTLOCATIONID] [TentLocationID],
	cast([TENTSPACENUMBER] as nvarchar(4000)) [TentSpaceNumber],
	[DELIVERYCARRIERID] [DeLiveryCarrierID],
	cast([DELIVERYCARRIEROTHER] as nvarchar(4000)) [DeLiveryCarrierOther],
	[CHECKEDINUSERSID] [CheckedInUsersID],
	cast([SPAREPARTS] as nvarchar(4000)) [SpareParts],
	cast([VINLOCATION] as nvarchar(4000)) [VINLocation],
	[CHECKEDOUTUSERSID] [CheckedOutUsersID],
	[SHIPPEDCARRIERID] [ShippedCarrierID],
	cast([SHIPPEDCARRIEROTHER] as nvarchar(4000)) [ShippedCarrierOther],
	cast([CHECKEDOUTNAME] as nvarchar(4000)) [CheckedOutName],
	cast([BIDDERNUMBER] as nvarchar(4000)) [BidderNumber],
	cast([LICENSENUMBER] as nvarchar(4000)) [LicenseNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_DriverInFormation_Raw]
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


