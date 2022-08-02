
Select
	[ID],[InvoiceID],[CreatedOn],[UpdatedOn],[DeletedOn],[DaTestamp],[Amount],[Approved],[ResponseStatus],[ProvIDEr],[RawResponseCode],[Description],[TransactionID],[BuyerCity],[BuyerStateregion],[BuyerzipPostal],[BuyerEmail],[AllFields],[LastUpdatedUser],[Method],[AuthorizationCode],[AvsResponseCode],[Cvv2ResponseCode],[CavResponseCode],[BuyerStreet] 
From stg.[AH_PaymentResponses_Incr] 
Where [dbt_valid_to] is null