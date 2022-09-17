
  
  if object_id ('"dbo"."Auct_ODOMeterReading__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ODOMeterReading__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ODOMeterReading__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ODOMeterReading__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ODOMeterReading__dbt_tmp_temp_view as
    
Select
	cast([ODOMeterReadingID] as int) [ODOMETERREADINGID],
	cast([CarID] as int) [CARID],
	cast([ReadingTypeID] as int) [READINGTYPEID],
	cast([Reading] as int) [READING],
	cast([DateRead] as datetime) [DATEREAD],
	cast([ReadByContactID] as int) [READBYCONTACTID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_ODOMeterReading_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ODOMeterReading__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ODOMeterReading__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ODOMeterReading__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ODOMeterReading__dbt_tmp_temp_view"
    end


