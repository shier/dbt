
  
  if object_id ('"dbo"."Auct_BadgeType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BadgeType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BadgeType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BadgeType__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BadgeType__dbt_tmp_temp_view as
    
Select
	cast([BadgeTypeID] as int) [BADGETYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_BadgeType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BadgeType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BadgeType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BadgeType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BadgeType__dbt_tmp_temp_view"
    end


