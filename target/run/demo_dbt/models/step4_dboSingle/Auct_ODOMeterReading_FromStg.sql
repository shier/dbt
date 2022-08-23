
  
  if object_id ('"dbo"."Auct_ODOMeterReading_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ODOMeterReading_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ODOMeterReading_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ODOMeterReading_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ODOMeterReading_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ODOMeterReadingID] as int) [ODOMeterReadingID],
	cast([CarID] as int) [CarID],
	cast([ReadingTypeID] as int) [ReadingTypeID],
	cast([Reading] as int) [Reading],
	cast([DateRead] as datetime) [DateRead],
	cast([ReadByContactID] as int) [ReadByContactID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ODOMeterReading_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ODOMeterReading_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ODOMeterReading_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ODOMeterReading_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ODOMeterReading_FromStg__dbt_tmp_temp_view"
    end


