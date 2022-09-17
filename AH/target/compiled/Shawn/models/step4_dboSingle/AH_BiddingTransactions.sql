
Select
	cast([TransactionID] as nvarchar(30)) [TransactionID],
	cast([Maxmindscore] as decimal(5,2)) [MaxMindScore],
	cast([Amount] as decimal(24,2)) [Amount],
	cast([ID] as int) [ID],
	cast([ListingActionID] as int) [ListingActionID],
	cast([CreditCardID] as int) [CreditCardID],
	cast([Active] as bit) [IsActive] 
From stg.[AH_BiddingTransactions_FinalView]