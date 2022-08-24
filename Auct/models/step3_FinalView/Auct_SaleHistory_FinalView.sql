{{ config(materialized='view',schema='stg')}}
Select
	[SaleID],[BlockSaleID],[ShipDateVerified],[CarrierID],[Comments],[BuyerCustomerAccountID],[SellerCustomerAccountID],[ShiptoAddressID],[ShiptoContactID],[Created],[UpdateEventID],[BillofLading],[BillofLadingText],[BMA],[Legacy],[ShipDate],[Navision],[BuyerdealerID],[SellerAddressID],[SellerDealerID] 
From stg.[Auct_SaleHistory_Incr] 
Where [dbt_valid_to] is null