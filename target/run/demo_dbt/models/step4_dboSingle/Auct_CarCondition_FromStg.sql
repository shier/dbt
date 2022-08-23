
  
  if object_id ('"dbo"."Auct_CarCondition_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarCondition_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CarCondition_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CarCondition_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CarCondition_FromStg__dbt_tmp_temp_view as
    
Select
	cast([CarConditionID] as int) [CarConditionID],
	cast([WebActive] as bit) [WebActive],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([CarConditionBit] as int) [CarConditionBit] 
From stg.[Auct_CarCondition_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CarCondition_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CarCondition_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CarCondition_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarCondition_FromStg__dbt_tmp_temp_view"
    end


