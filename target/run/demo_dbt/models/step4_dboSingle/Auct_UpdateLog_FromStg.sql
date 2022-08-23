
  
  if object_id ('"dbo"."Auct_UpdateLog_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UpdateLog_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_UpdateLog_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_UpdateLog_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_UpdateLog_FromStg__dbt_tmp_temp_view as
    
Select
	cast([UpdateLogID] as int) [UpdateLogID],
	cast([TableName] as nvarchar(4000)) [TableName],
	cast([KeyValue] as nvarchar(4000)) [KeyValue],
	cast([FieldName] as nvarchar(4000)) [FieldName],
	cast([Oldvalue] as nvarchar(4000)) [Oldvalue],
	cast([Newvalue] as nvarchar(4000)) [Newvalue],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([CreateDate] as datetime) [CreateDate],
	cast([TransactionID] as nvarchar(4000)) [TransactionID] 
From stg.[Auct_UpdateLog_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_UpdateLog_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_UpdateLog_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_UpdateLog_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UpdateLog_FromStg__dbt_tmp_temp_view"
    end


