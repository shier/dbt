
Select
	Active Active,
	MaxMindScore Maxmindscore,
	Amount Amount,
	cast(TransactionId as nvarchar(4000)) TransactionID,
	ListingActionId ListingActionID,
	CreditCardId CreditCardID,
	Id ID
From AH_BiddingTransactions_Raw