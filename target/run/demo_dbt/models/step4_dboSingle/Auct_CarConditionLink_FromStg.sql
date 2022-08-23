
  
  if object_id ('"dbo"."Auct_CarConditionLink_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarConditionLink_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CarConditionLink_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CarConditionLink_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CarConditionLink_FromStg__dbt_tmp_temp_view as
    
Select
	cast([CarConditionLinkID] as int) [CarConditionLinkID],
	cast([CarID] as int) [CarID],
	cast([CarConditionID] as int) [CarConditionID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_CarConditionLink_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CarConditionLink_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CarConditionLink_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CarConditionLink_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarConditionLink_FromStg__dbt_tmp_temp_view"
    end


