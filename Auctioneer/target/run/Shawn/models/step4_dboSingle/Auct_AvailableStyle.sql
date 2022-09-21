
  
  if object_id ('"dbo"."Auct_AvailableStyle__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AvailableStyle__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AvailableStyle__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AvailableStyle__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AvailableStyle__dbt_tmp_temp_view as
    
Select
	cast([AvailableStyleID] as int) [AVAILABLESTYLEID],
	cast([CarModelID] as int) [CARMODELID],
	cast([CarStyleID] as int) [CARSTYLEID],
	cast([AllowDropDown] as nvarchar(4000)) [ALLOWDROPDOWN],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AvailableStyle_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AvailableStyle__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AvailableStyle__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AvailableStyle__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AvailableStyle__dbt_tmp_temp_view"
    end


