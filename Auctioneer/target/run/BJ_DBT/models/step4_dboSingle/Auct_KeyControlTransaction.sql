
  
  if object_id ('"dbo"."Auct_KeyControlTransaction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_KeyControlTransaction__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_KeyControlTransaction__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_KeyControlTransaction__dbt_tmp"
    end


   EXEC('create view dbo.Auct_KeyControlTransaction__dbt_tmp_temp_view as
    
Select
	cast([KeyControlTransactionID] as int) [KeyControlTransActionID],
	cast([KeyControlID] as int) [KeyControlID],
	cast([UserID] as int) [UserID],
	cast([RecipientName] as nvarchar(4000)) [RecipientName],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([KeyControlStatusID] as int) [KeyControlStatusID],
	cast([TransactionTime] as DATETIME) [TransactionTime] 
From stg.[Auct_KeyControlTransaction_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_KeyControlTransaction__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_KeyControlTransaction__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_KeyControlTransaction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_KeyControlTransaction__dbt_tmp_temp_view"
    end


