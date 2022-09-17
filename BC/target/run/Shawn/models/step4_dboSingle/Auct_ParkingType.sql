
  
  if object_id ('"dbo"."Auct_ParkingType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ParkingType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ParkingType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ParkingType__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ParkingType__dbt_tmp_temp_view as
    
Select
	cast([ParkingTypeID] as int) [PARKINGTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_ParkingType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ParkingType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ParkingType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ParkingType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ParkingType__dbt_tmp_temp_view"
    end


