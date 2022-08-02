
  
  if object_id ('"stg"."Auct_ODOMeterReading_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ODOMeterReading_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ODOMeterReading_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ODOMeterReading_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ODOMeterReading_Inter__dbt_tmp_temp_view as
    
Select
	ODOMETERREADINGID ODOMeterReadingID,
	CARID CarID,
	READINGTYPEID ReadingTypeID,
	READING Reading,
	READBYCONTACTID ReadByContactID,
	UPDATEEVENTID UpdateEventID,
	DATEREAD DateRead,
	CREATED Created
From Auct_ODOMeterReading_Raw
    ');

  CREATE TABLE "stg"."Auct_ODOMeterReading_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ODOMeterReading_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ODOMeterReading_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ODOMeterReading_Inter__dbt_tmp_temp_view"
    end


