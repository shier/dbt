
  
  if object_id ('"dbo"."Auct_ReservationCharge__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ReservationCharge__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ReservationCharge__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ReservationCharge__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ReservationCharge__dbt_tmp_temp_view as
    
Select
	cast([ReservationID] as int) [RESERVATIONID],
	cast([ChargeID] as int) [CHARGEID] 
From stg.[Auct_ReservationCharge_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ReservationCharge__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ReservationCharge__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ReservationCharge__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ReservationCharge__dbt_tmp_temp_view"
    end


