
  
  if object_id ('"stg"."Auct_Reservation_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Reservation_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Reservation_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Reservation_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Reservation_Inter__dbt_tmp_temp_view as
    
Select
	[RESERVATIONID] [ReservationID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[ADDRESSID] [AddressID],
	[PHONEID] [PhoneID],
	[SITECATEGORYID] [SiteCategoryID],
	[SITEID] [SiteID],
	[EVENTID] [EventID],
	[STARTDATE] [StartDate],
	[ENDDATE] [EndDate],
	[ISCHECKEDIN] [IsCheckedIn],
	[CHECKINDATE] [CheckinDate],
	[CHECKOUTDATE] [CheckOutDate],
	[RESERVATIONSTATUSID] [ReservationStatusID],
	[CHARGEID] [ChargeID],
	[OCCUPANTCUSTOMERACCOUNTID] [OccupantCustomerAccountID]
From stg.[Auct_Reservation_Raw]
    ');

  CREATE TABLE "stg"."Auct_Reservation_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Reservation_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Reservation_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Reservation_Inter__dbt_tmp_temp_view"
    end


