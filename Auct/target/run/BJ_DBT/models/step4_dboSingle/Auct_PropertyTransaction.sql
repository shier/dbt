
  
  if object_id ('"dbo"."Auct_PropertyTransaction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PropertyTransaction__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_PropertyTransaction__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_PropertyTransaction__dbt_tmp"
    end


   EXEC('create view dbo.Auct_PropertyTransaction__dbt_tmp_temp_view as
    
Select
	cast([PropertyTransactionID] as int) [PropertyTransactionID],
	cast([PropertyID] as int) [PropertyID],
	cast([PropertyStatusID] as int) [PropertyStatusID],
	cast([RecipientName] as nvarchar(4000)) [RecipientName],
	cast([TransactionTime] as datetime) [TransactionTime],
	cast([UserID] as int) [UserID],
	cast([PropertyTypeKey] as int) [PropertyTypeKey],
	cast([Description] as nvarchar(4000)) [Description],
	cast([PropertySpace] as nvarchar(4000)) [PropertySpace],
	cast([ChangedFields] as nvarchar(4000)) [ChangedFields],
	cast([ConsignmentID] as int) [ConsignmentID] 
From stg.[Auct_PropertyTransaction_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_PropertyTransaction__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_PropertyTransaction__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_PropertyTransaction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PropertyTransaction__dbt_tmp_temp_view"
    end


