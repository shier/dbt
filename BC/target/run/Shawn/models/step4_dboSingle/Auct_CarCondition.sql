
  
  if object_id ('"dbo"."Auct_CarCondition__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarCondition__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CarCondition__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CarCondition__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CarCondition__dbt_tmp_temp_view as
    
Select
	cast([WebActive] as bit) [WEBACTIVE],
	cast([Active] as bit) [ACTIVE],
	cast([CarConditionID] as int) [CARCONDITIONID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([CarConditionBit] as int) [CARCONDITIONBIT] 
From stg.[Auct_CarCondition_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CarCondition__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CarCondition__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CarCondition__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarCondition__dbt_tmp_temp_view"
    end


