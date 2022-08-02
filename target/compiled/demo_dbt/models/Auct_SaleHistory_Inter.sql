
Select
	cast(BMA as nvarchar(4000)) BMA,
	cast(NAVISION as nvarchar(4000)) Navision,
	cast(SHIPDATEVERIFIED as nvarchar(4000)) ShipDateVerified,
	cast(COMMENTS as nvarchar(4000)) Comments,
	cast(BILLOFLADING as nvarchar(4000)) BillofLading,
	cast(BILLOFLADINGTEXT as nvarchar(4000)) BillofLadingText,
	CREATED Created,
	SHIPDATE ShipDate,
	SHIPTOCONTACTID ShiptoContactID,
	UPDATEEVENTID UpdateEventID,
	LEGACY Legacy,
	BUYERDEALERID BuyerdealerID,
	SELLERADDRESSID SellerAddressID,
	SELLERDEALERID SellerDealerID,
	SALEID SaleID,
	BLOCKSALEID BlockSaleID,
	CARRIERID CarrierID,
	BUYERCUSTOMERACCOUNTID BuyerCustomerAccountID,
	SELLERCUSTOMERACCOUNTID SellerCustomerAccountID,
	SHIPTOADDRESSID ShiptoAddressID
From Auct_SaleHistory_Raw