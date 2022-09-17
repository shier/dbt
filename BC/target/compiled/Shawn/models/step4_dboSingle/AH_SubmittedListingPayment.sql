
Select
	cast([TransactionID] as nvarchar(30)) [TransactionId],
	cast([Amount] as decimal(24,2)) [Amount],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([ListingID] as int) [ListingId],
	cast([ID] as int) [Id],
	cast([ConsignorID] as int) [ConsignorId],
	cast([HasproMarketing] as bit) [HasProMarketing],
	cast([HasproPhotography] as bit) [HasProPhotography] 
From stg.[AH_SubmittedListingPayment_FinalView]