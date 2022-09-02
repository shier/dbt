
  
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
	cast([ID] as int) [ID],
	cast([TransactionID] as nvarchar(30)) [TransactionID],
	cast([Maxmindscore] as decimal(5,2)) [MaxMindScore],
	cast([Amount] as decimal(24,2)) [Amount],
	cast([ListingActionID] as int) [ListingActionID],
	cast([CreditCardID] as int) [CreditCardID],
	cast([Active] as bit) [IsActive] 
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


