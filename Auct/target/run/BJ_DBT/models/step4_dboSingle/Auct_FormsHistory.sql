
  
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
	cast([FormHistoryID] as int) [FormHistoryID],
	cast([FormID] as int) [FormID],
	cast([FileToken] as nvarchar(4000)) [FileToken],
	cast([ChangeDescription] as nvarchar(4000)) [ChangeDescription],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([CreatedDateTime] as DATETIME) [CreatedDateTime] 
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


