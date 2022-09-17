
  
  if object_id ('"dbo"."AH_Invoices__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Invoices__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Invoices__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Invoices__dbt_tmp"
    end


   EXEC('create view dbo.AH_Invoices__dbt_tmp_temp_view as
    
Select
	cast([Paiddttm] as datetime) [PaidDTTM],
	cast([CreatedOn] as datetime) [Created_RWXInvoices],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXInvoices],
	cast([DeletedOn] as datetime) [DeletedDate_RWXInvoices],
	cast([Createddttm] as datetime) [CreatedDTTM],
	cast([Fulfilleddttm] as datetime) [FulfilledDTTM],
	cast([PropertybagID] as int) [PropertybagID],
	cast([ID] as int) [InvoiceID_RWXInvoices],
	cast([ShippingOptionID] as int) [ShippingOptionID],
	cast([PayerID] as int) [PayerID],
	cast([OwnerID] as int) [OwnerID_RWXInvoices],
	cast([AuctionEventID] as int) [AuctionEventID],
	cast([SalesTax] as decimal(24,2)) [SalesTax],
	cast([BuyersPremiumPercent] as numeric(24,2)) [BuyerPremiumPct],
	cast([BuyersPremiumAmount] as decimal(24,2)) [BuyerPremiumAmount],
	cast([ShippingAmount] as decimal(24,2)) [ShippingAmount],
	cast([SubTotal] as decimal(24,2)) [Subtotal],
	cast([Total] as decimal(24,2)) [Total],
	cast([IsPayerLocked] as bit) [IsPayerLocked],
	cast([Shipped] as bit) [HasShipped],
	cast([IsArchived] as bit) [IsArchived_RWXInvoices],
	cast([Status] as nvarchar(100)) [Status_RWXInvoices],
	cast([ShippingLastName] as nvarchar(500)) [ShippingLastName],
	cast([BillingLastName] as nvarchar(500)) [BillingLastName],
	cast([OwnerName] as nvarchar(200)) [OwnerName],
	cast([Shippingdetails] as nvarchar(500)) [ShippingDetails],
	cast([OwnerCity] as nvarchar(200)) [OwnerCity],
	cast([OwnerStateregion] as nvarchar(200)) [OwnerStateRegion],
	cast([OwnerzipPostal] as varchar(128)) [OwnerPostalCode],
	cast([OwnerCountry] as nvarchar(200)) [OwnerCountry],
	cast([ShippingFirstName] as nvarchar(500)) [ShippingFirstName],
	cast([BillingFirstName] as nvarchar(500)) [BIllingFirstName],
	cast([BillingCity] as nvarchar(40)) [BillingCity],
	cast([BillingStateregion] as nvarchar(40)) [BillingState],
	cast([BillingzipPostal] as varchar(128)) [BillingPostalCode],
	cast([BillingCountry] as nvarchar(40)) [BillingCountry],
	cast([OwnerStreet1] as varchar(128)) [OwnerStreet1],
	cast([OwnerStreet2] as varchar(128)) [OwnerStreet2],
	cast([ShippingCity] as nvarchar(100)) [ShippingCity],
	cast([ShippingStateregion] as nvarchar(50)) [ShippingState],
	cast([ShippingzipPostal] as varchar(128)) [ShippingPostalCode],
	cast([ShippingCountry] as nvarchar(100)) [ShippingCountry],
	cast([BillingStreet1] as varchar(128)) [BillingStreet1],
	cast([BillingStreet2] as varchar(128)) [BillingStreet2],
	cast([Comments] as nvarchar(4000)) [Comment],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXInvoices],
	cast([Currency] as nvarchar(10)) [CurrencyID],
	cast([Type] as nvarchar(50)) [Type_RWXInvoices],
	cast([ShippingStreet1] as varchar(128)) [ShippingStreet1],
	cast([ShippingStreet2] as varchar(128)) [ShippingStreet2] 
From stg.[AH_Invoices_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Invoices__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Invoices__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Invoices__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Invoices__dbt_tmp_temp_view"
    end


