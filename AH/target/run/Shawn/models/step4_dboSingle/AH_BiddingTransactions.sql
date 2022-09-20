
  
  if object_id ('"dbo"."AH_BiddingTransactions__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_BiddingTransactions__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_BiddingTransactions__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_BiddingTransactions__dbt_tmp"
    end


   EXEC('create view dbo.AH_BiddingTransactions__dbt_tmp_temp_view as
    
Select
	cast([TransactionID] as nvarchar(30)) [TransactionId],
	cast([Maxmindscore] as decimal(5,2)) [MaxMindScore],
	cast([Amount] as decimal(24,2)) [Amount],
	cast([ID] as int) [Id],
	cast([ListingActionID] as int) [ListingActionId],
	cast([CreditCardID] as int) [CreditCardId],
	cast([Active] as bit) [Active] 
From stg.[AH_BiddingTransactions_FinalView]
    ');

  CREATE TABLE "dbo"."AH_BiddingTransactions__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_BiddingTransactions__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_BiddingTransactions__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_BiddingTransactions__dbt_tmp_temp_view"
    end


