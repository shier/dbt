
  
  if object_id ('"dbo"."Auct_ConsignmentLog_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentLog_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ConsignmentLog_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ConsignmentLog_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ConsignmentLog_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ConsignmentLogID] as int) [ConsignmentLogID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([NoteType] as nvarchar(4000)) [NoteType],
	cast([Note] as nvarchar(4000)) [Note],
	cast([UsersID] as int) [UsersID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([CustomerAccountID] as int) [CustomerAccountID] 
From stg.[Auct_ConsignmentLog_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ConsignmentLog_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ConsignmentLog_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ConsignmentLog_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentLog_FromStg__dbt_tmp_temp_view"
    end


