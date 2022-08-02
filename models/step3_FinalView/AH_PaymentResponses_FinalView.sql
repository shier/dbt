{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Approved],[InvoiceID],[CreatedOn],[UpdatedOn],[DeletedOn],[DaTestamp],[Amount],[AuthorizationCode],[AvsResponseCode],[Cvv2ResponseCode],[CavResponseCode],[BuyerStreet],[BuyerCity],[ResponseStatus],[ProvIDEr],[RawResponseCode],[Description],[TransactionID],[Method],[BuyerStateregion],[BuyerzipPostal],[BuyerEmail],[AllFields],[LastUpdatedUser] 
From stg.[AH_PaymentResponses_Incr] 
Where [dbt_valid_to] is null