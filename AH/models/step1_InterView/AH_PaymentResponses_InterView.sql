{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[Approved] [Approved],
	[InvoiceId] [InvoiceID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[DateStamp] [DaTestamp],
	[Amount] [Amount],
	cast([AuthorizationCode] as nvarchar(4000)) [AuthorizationCode],
	cast([AVSResponseCode] as nvarchar(4000)) [AvsResponseCode],
	cast([CVV2ResponseCode] as nvarchar(4000)) [Cvv2ResponseCode],
	cast([CAVResponseCode] as nvarchar(4000)) [CavResponseCode],
	cast([BuyerStreet] as nvarchar(4000)) [BuyerStreet],
	cast([BuyerCity] as nvarchar(4000)) [BuyerCity],
	cast([ResponseStatus] as nvarchar(4000)) [ResponseStatus],
	cast([Provider] as nvarchar(4000)) [ProvIDEr],
	cast([RawResponseCode] as nvarchar(4000)) [RawResponseCode],
	cast([Description] as nvarchar(4000)) [Description],
	cast([TransactionID] as nvarchar(4000)) [TransactionID],
	cast([Method] as nvarchar(4000)) [Method],
	cast([BuyerStateRegion] as nvarchar(4000)) [BuyerStateregion],
	cast([BuyerZipPostal] as nvarchar(4000)) [BuyerzipPostal],
	cast([BuyerEmail] as nvarchar(4000)) [BuyerEmail],
	cast([AllFields] as nvarchar(4000)) [AllFields],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser]
From stg.[AH_PaymentResponses_Raw]
