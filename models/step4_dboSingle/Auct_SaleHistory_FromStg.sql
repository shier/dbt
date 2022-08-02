{{ config(materialized='table',schema='dbo')}}
Select
	cast([SaleID] as int) [SaleID],
	cast([BlockSaleID] as int) [BlockSaleID],
	cast([ShipDateVerified] as nvarchar(4000)) [ShipDateVerified],
	cast([CarrierID] as int) [CarrierID],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([BuyerCustomerAccountID] as int) [BuyerCustomerAccountID],
	cast([SellerCustomerAccountID] as int) [SellerCustomerAccountID],
	cast([ShiptoAddressID] as int) [ShiptoAddressID],
	cast([ShiptoContactID] as int) [ShiptoContactID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([BillofLading] as nvarchar(4000)) [BillofLading],
	cast([BillofLadingText] as nvarchar(4000)) [BillofLadingText],
	cast([BMA] as nvarchar(4000)) [BMA],
	cast([Legacy] as int) [Legacy],
	cast([ShipDate] as datetime) [ShipDate],
	cast([Navision] as nvarchar(4000)) [Navision],
	cast([BuyerdealerID] as int) [BuyerdealerID],
	cast([SellerAddressID] as int) [SellerAddressID],
	cast([SellerDealerID] as int) [SellerDealerID] 
From stg.[Auct_SaleHistory_FinalView]