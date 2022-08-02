
  
  if object_id ('"stg"."Auct_Booth_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Booth_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Booth_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Booth_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Booth_Inter__dbt_tmp_temp_view as
    
Select
	VOLTSREQUIRED VoltsRequired,
	UPDATEEVENTID UpdateEventID,
	BOOTHID BoothID,
	LOCATIONID LocationID,
	AUCTIONID AuctionID,
	AMPSREQUIRED AmpsRequired,
	CREATED Created
From Auct_Booth_Raw
    ');

  CREATE TABLE "stg"."Auct_Booth_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Booth_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Booth_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Booth_Inter__dbt_tmp_temp_view"
    end


