
Select
	[JournalID],[TimeCreated],[DateCreated],[DateModified],[VendorSpaceID],[InventoryID],[Country],[PaymentMethod],[InvoiceID],[BidderID],[DealerID],[VendorID],[MediaID],[SponsorID],[AuctionID],[ProjectID],[Ln],[AccountID],[CustomerAccountID],[CarConsignmentID],[JournalType],[DepositID],[ContactName],[Address],[City],[CreditCardNumber],[CreditCardExp],[Comments],[CreatedBy],[ModifiedBy],[ServerCreatedBy],[StateProvince],[PostalCode],[Phoneac],[Phone],[Description],[CheckNumber],[ServerModifiedBy],[Status],[Rn],[Credit],[Debit] 
From stg.[Auct_Journal_Incr] 
Where [dbt_valid_to] is null