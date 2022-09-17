
  
  if object_id ('"dbo"."Auct_FormsHistory__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FormsHistory__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_FormsHistory__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_FormsHistory__dbt_tmp"
    end


   EXEC('create view dbo.Auct_FormsHistory__dbt_tmp_temp_view as
    
Select
	cast([FormHistoryID] as int) [FORMHISTORYID],
	cast([FormID] as int) [FORMID],
	cast([FileToken] as nvarchar(4000)) [FILETOKEN],
	cast([ChangeDescription] as nvarchar(4000)) [CHANGEDESCRIPTION],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([CreatedDateTime] as DATETIME) [CREATEDDATETIME] 
From stg.[Auct_FormsHistory_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_FormsHistory__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_FormsHistory__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_FormsHistory__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FormsHistory__dbt_tmp_temp_view"
    end


