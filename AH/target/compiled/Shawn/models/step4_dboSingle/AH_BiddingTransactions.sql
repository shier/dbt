
Select
	cast([TransactionID] as nvarchar(30)) [TransactionId],
	cast([Maxmindscore] as decimal(5,2)) [MaxMindScore],
	cast([Amount] as decimal(24,2)) [Amount],
	cast([ID] as int) [Id],
	cast([ListingActionID] as int) [ListingActionId],
	cast([CreditCardID] as int) [CreditCardId],
	cast([Active] as bit) [Active] 
From stg.[AH_BiddingTransactions_FinalView]