
Select
	[ID],[TotalAmount],[PeRunitAmount],[Description],[LastUpdatedUser],[Currency],[Status],[Type],[LotNumber],[CreatedOn],[UpdatedOn],[DeletedOn],[DaTestamp],[Taxable],[IsArchived],[BuyersPremiuMapplies],[IsPayerArchived],[InvoiceID],[ListingID],[Quantity],[OwnerID],[PayerID],[ReListiteration],[AuctionEventID] 
From stg.[AH_LineItems_Incr] 
Where [dbt_valid_to] is null