{{ config(materialized='table',schema='dbo')}}
Select
	cast([SaleID] as int) [SALEID],
	cast([BlockSaleID] as int) [BLOCKSALEID],
	cast([ShipDateVerified] as nvarchar(4000)) [SHIPDATEVERIFIED],
	cast([CarrierID] as int) [CARRIERID],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([BuyerCustomerAccountID] as int) [BUYERCUSTOMERACCOUNTID],
	cast([SellerCustomerAccountID] as int) [SELLERCUSTOMERACCOUNTID],
	cast([ShiptoAddressID] as int) [SHIPTOADDRESSID],
	cast([ShiptoContactID] as int) [SHIPTOCONTACTID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([BillofLading] as nvarchar(4000)) [BILLOFLADING],
	cast([BillofLadingText] as nvarchar(4000)) [BILLOFLADINGTEXT],
	cast([BMA] as nvarchar(4000)) [BMA],
	cast([Legacy] as int) [LEGACY],
	cast([ShipDate] as datetime) [SHIPDATE],
	cast([Navision] as nvarchar(4000)) [NAVISION],
	cast([BuyerdealerID] as int) [BUYERDEALERID],
	cast([SellerAddressID] as int) [SELLERADDRESSID],
	cast([SellerDealerID] as int) [SELLERDEALERID] 
From stg.[Auct_SaleHistory_FinalView]