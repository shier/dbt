
  
  if object_id ('"stg"."Auct_PropertyTransaction_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PropertyTransaction_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_PropertyTransaction_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_PropertyTransaction_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_PropertyTransaction_Inter__dbt_tmp_temp_view as
    
Select
	[PROPERTYTRANSACTIONID] [PropertyTransactionID],
	[PROPERTYID] [PropertyID],
	[PROPERTYSTATUSID] [PropertyStatusID],
	cast([RECIPIENTNAME] as nvarchar(4000)) [RecipientName],
	[TRANSACTIONTIME] [TransactionTime],
	[USERID] [UserID],
	[PROPERTYTYPEKEY] [PropertyTypeKey],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	cast([PROPERTYSPACE] as nvarchar(4000)) [PropertySpace],
	cast([CHANGEDFIELDS] as nvarchar(4000)) [ChangedFields],
	[CONSIGNMENTID] [ConsignmentID]
From stg.[Auct_PropertyTransaction_Raw]
    ');

  CREATE TABLE "stg"."Auct_PropertyTransaction_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_PropertyTransaction_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_PropertyTransaction_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PropertyTransaction_Inter__dbt_tmp_temp_view"
    end


