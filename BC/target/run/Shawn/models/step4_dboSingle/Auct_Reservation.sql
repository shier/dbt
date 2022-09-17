
  
  if object_id ('"dbo"."Auct_Reservation__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Reservation__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Reservation__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Reservation__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Reservation__dbt_tmp_temp_view as
    
Select
	cast([ReservationID] as int) [RESERVATIONID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([AddressID] as int) [ADDRESSID],
	cast([PhoneID] as int) [PHONEID],
	cast([SiteCategoryID] as int) [SITECATEGORYID],
	cast([SiteID] as int) [SITEID],
	cast([EventID] as int) [EVENTID],
	cast([StartDate] as datetime) [STARTDATE],
	cast([EndDate] as datetime) [ENDDATE],
	cast([IsCheckedIn] as int) [ISCHECKEDIN],
	cast([CheckinDate] as datetime) [CHECKINDATE],
	cast([CheckOutDate] as datetime) [CHECKOUTDATE],
	cast([ReservationStatusID] as int) [RESERVATIONSTATUSID],
	cast([ChargeID] as int) [CHARGEID],
	cast([OccupantCustomerAccountID] as int) [OCCUPANTCUSTOMERACCOUNTID] 
From stg.[Auct_Reservation_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Reservation__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Reservation__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Reservation__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Reservation__dbt_tmp_temp_view"
    end


