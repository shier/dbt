
  
  if object_id ('"dbo"."Auct_CarModel__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarModel__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CarModel__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CarModel__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CarModel__dbt_tmp_temp_view as
    
Select
	cast([Active] as bit) [ACTIVE],
	cast([WebActive] as bit) [WEBACTIVE],
	cast([CarModelID] as int) [CARMODELID],
	cast([Name] as nvarchar(1000)) [NAME],
	cast([CarTypeID] as int) [CARTYPEID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([RowGUID] as nvarchar(512)) [ROWGUID] 
From stg.[Auct_CarModel_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CarModel__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CarModel__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CarModel__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarModel__dbt_tmp_temp_view"
    end


