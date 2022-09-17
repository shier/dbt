
Select
	cast([TransactionID] as nvarchar(30)) [TransactionID],
	cast([Amount] as decimal(24,2)) [Amount],
	cast([CreatedOn] as datetime) [Created],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([ListingID] as int) [ListingID],
	cast([ID] as int) [ID],
	cast([ConsignorID] as int) [UserID],
	cast([HasproMarketing] as bit) [HasProMarketing],
	cast([HasproPhotography] as bit) [HasProPhotography] 
From stg.[AH_SubmittedListingPayment_FinalView]