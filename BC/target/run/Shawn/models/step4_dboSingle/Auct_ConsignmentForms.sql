
  
  if object_id ('"dbo"."Auct_ConsignmentForms__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentForms__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ConsignmentForms__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ConsignmentForms__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ConsignmentForms__dbt_tmp_temp_view as
    
Select
	cast([ConsignmentFormID] as int) [CONSIGNMENTFORMID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([FormName] as nvarchar(4000)) [FORMNAME],
	cast([FormKey] as nvarchar(4000)) [FORMKEY],
	cast([FilePath] as nvarchar(4000)) [FILEPATH],
	cast([SignStartedDateTime] as DATETIME) [SIGNSTARTEDDATETIME],
	cast([SignfinishedDateTime] as DATETIME) [SIGNFINISHEDDATETIME],
	cast([UserID] as int) [USERID] 
From stg.[Auct_ConsignmentForms_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ConsignmentForms__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ConsignmentForms__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ConsignmentForms__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentForms__dbt_tmp_temp_view"
    end


