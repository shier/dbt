create view "stg"."AH_BiddingTransactions_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	cast([TransactionId] as nvarchar(4000)) [TransactionID],
	[MaxMindScore] [Maxmindscore],
	[Amount] [Amount],
	[ListingActionId] [ListingActionID],
	[CreditCardId] [CreditCardID],
	[Active] [Active]
From stg.[AH_BiddingTransactions_Raw]