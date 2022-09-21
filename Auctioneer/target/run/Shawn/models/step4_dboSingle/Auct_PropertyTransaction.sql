
  
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
	cast([PropertyTransactionID] as int) [PROPERTYTRANSACTIONID],
	cast([PropertyID] as int) [PROPERTYID],
	cast([PropertyStatusID] as int) [PROPERTYSTATUSID],
	cast([RecipientName] as nvarchar(4000)) [RECIPIENTNAME],
	cast([TransactionTime] as datetime) [TRANSACTIONTIME],
	cast([UserID] as int) [USERID],
	cast([PropertyTypeKey] as int) [PROPERTYTYPEKEY],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([PropertySpace] as nvarchar(4000)) [PROPERTYSPACE],
	cast([ChangedFields] as nvarchar(4000)) [CHANGEDFIELDS],
	cast([ConsignmentID] as int) [CONSIGNMENTID] 
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


