
  
  if object_id ('"dbo"."Auct_ConsignmentForms_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentForms_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ConsignmentForms_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ConsignmentForms_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ConsignmentForms_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ConsignmentFormID] as int) [ConsignmentFormID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([FormName] as nvarchar(4000)) [FormName],
	cast([FormKey] as nvarchar(4000)) [FormKey],
	cast([FilePath] as nvarchar(4000)) [FilePath],
	cast([SignStartedDateTime] as DATETIME) [SignStartedDateTime],
	cast([SignfinishedDateTime] as DATETIME) [SignfinishedDateTime],
	cast([UserID] as int) [UserID] 
From stg.[Auct_ConsignmentForms_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ConsignmentForms_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ConsignmentForms_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ConsignmentForms_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentForms_FromStg__dbt_tmp_temp_view"
    end


