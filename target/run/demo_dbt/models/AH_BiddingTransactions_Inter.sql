
  
  if object_id ('"stg"."AH_BiddingTransactions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_BiddingTransactions_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_BiddingTransactions_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_BiddingTransactions_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_BiddingTransactions_Inter__dbt_tmp_temp_view as
    
Select
	Active Active,
	MaxMindScore Maxmindscore,
	Amount Amount,
	cast(TransactionId as nvarchar(4000)) TransactionID,
	ListingActionId ListingActionID,
	CreditCardId CreditCardID,
	Id ID
From AH_BiddingTransactions_Raw
    ');

  CREATE TABLE "stg"."AH_BiddingTransactions_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_BiddingTransactions_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_BiddingTransactions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_BiddingTransactions_Inter__dbt_tmp_temp_view"
    end


