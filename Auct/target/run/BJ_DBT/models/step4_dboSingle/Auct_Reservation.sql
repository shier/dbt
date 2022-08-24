
  
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
	cast([ReservationID] as int) [ReservationID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([AddressID] as int) [AddressID],
	cast([PhoneID] as int) [PhoneID],
	cast([SiteCategoryID] as int) [SiteCategoryID],
	cast([SiteID] as int) [SiteID],
	cast([EventID] as int) [EventID],
	cast([StartDate] as datetime) [StartDate],
	cast([EndDate] as datetime) [EndDate],
	cast([IsCheckedIn] as int) [IsCheckedIn],
	cast([CheckinDate] as datetime) [CheckinDate],
	cast([CheckOutDate] as datetime) [CheckOutDate],
	cast([ReservationStatusID] as int) [ReservationStatusID],
	cast([ChargeID] as int) [ChargeID],
	cast([OccupantCustomerAccountID] as int) [OccupantCustomerAccountID] 
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


