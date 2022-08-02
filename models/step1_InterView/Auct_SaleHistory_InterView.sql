{{ config(materialized='view',schema='stg')}}
Select
	[SALEID] [SaleID],
	[BLOCKSALEID] [BlockSaleID],
	cast([SHIPDATEVERIFIED] as nvarchar(4000)) [ShipDateVerified],
	[CARRIERID] [CarrierID],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	[BUYERCUSTOMERACCOUNTID] [BuyerCustomerAccountID],
	[SELLERCUSTOMERACCOUNTID] [SellerCustomerAccountID],
	[SHIPTOADDRESSID] [ShiptoAddressID],
	[SHIPTOCONTACTID] [ShiptoContactID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([BILLOFLADING] as nvarchar(4000)) [BillofLading],
	cast([BILLOFLADINGTEXT] as nvarchar(4000)) [BillofLadingText],
	cast([BMA] as nvarchar(4000)) [BMA],
	[LEGACY] [Legacy],
	[SHIPDATE] [ShipDate],
	cast([NAVISION] as nvarchar(4000)) [Navision],
	[BUYERDEALERID] [BuyerdealerID],
	[SELLERADDRESSID] [SellerAddressID],
	[SELLERDEALERID] [SellerDealerID]
From stg.[Auct_SaleHistory_Raw]
