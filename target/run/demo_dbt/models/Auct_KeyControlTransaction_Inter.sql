
  
  if object_id ('"stg"."Auct_KeyControlTransaction_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_KeyControlTransaction_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_KeyControlTransaction_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_KeyControlTransaction_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_KeyControlTransaction_Inter__dbt_tmp_temp_view as
    
Select
	cast(RECIPIENTNAME as nvarchar(4000)) RecipientName,
	KEYCONTROLTRANSACTIONID KeyControlTransactionID,
	KEYCONTROLID KeyControlID,
	USERID UserID,
	CONSIGNMENTID ConsignmentID,
	KEYCONTROLSTATUSID KeyControlStatusID,
	TRANSACTIONTIME TransactionTime
From Auct_KeyControlTransaction_Raw
    ');

  CREATE TABLE "stg"."Auct_KeyControlTransaction_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_KeyControlTransaction_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_KeyControlTransaction_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_KeyControlTransaction_Inter__dbt_tmp_temp_view"
    end


