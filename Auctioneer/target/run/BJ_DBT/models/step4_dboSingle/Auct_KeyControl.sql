
  
  if object_id ('"dbo"."Auct_KeyControl__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_KeyControl__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_KeyControl__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_KeyControl__dbt_tmp"
    end


   EXEC('create view dbo.Auct_KeyControl__dbt_tmp_temp_view as
    
Select
	cast([KeyControlID] as int) [KeyControlID],
	cast([Active] as bit) [Active],
	cast([CurrentKeyControlTransactionID] as int) [CurrentKeyControlTransActionID],
	cast([ConsignmentID] as int) [ConsignmentID] 
From stg.[Auct_KeyControl_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_KeyControl__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_KeyControl__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_KeyControl__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_KeyControl__dbt_tmp_temp_view"
    end


