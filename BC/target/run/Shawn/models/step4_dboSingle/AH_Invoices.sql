
  
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
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Createddttm] as datetime) [CreatedDTTM],
	cast([Fulfilleddttm] as datetime) [FulfilledDTTM],
	cast([PropertybagID] as int) [PropertyBagId],
	cast([ID] as int) [Id],
	cast([ShippingOptionID] as int) [ShippingOptionId],
	cast([PayerID] as int) [PayerId],
	cast([OwnerID] as int) [OwnerId],
	cast([AuctionEventID] as int) [AuctionEventId],
	cast([SalesTax] as decimal(24,2)) [SalesTax],
	cast([BuyersPremiumPercent] as numeric(24,2)) [BuyersPremiumPercent],
	cast([BuyersPremiumAmount] as decimal(24,2)) [BuyersPremiumAmount],
	cast([ShippingAmount] as decimal(24,2)) [ShippingAmount],
	cast([SubTotal] as decimal(24,2)) [Subtotal],
	cast([Total] as decimal(24,2)) [Total],
	cast([IsPayerLocked] as bit) [IsPayerLocked],
	cast([Shipped] as bit) [Shipped],
	cast([IsArchived] as bit) [IsArchived],
	cast([Status] as nvarchar(100)) [Status],
	cast([ShippingLastName] as nvarchar(500)) [ShippingLastName],
	cast([BillingLastName] as nvarchar(500)) [BillingLastName],
	cast([OwnerName] as nvarchar(200)) [OwnerName],
	cast([Shippingdetails] as nvarchar(500)) [ShippingDetails],
	cast([OwnerCity] as nvarchar(200)) [OwnerCity],
	cast([OwnerStateregion] as nvarchar(200)) [OwnerStateRegion],
	cast([OwnerzipPostal] as varchar(128)) [OwnerZipPostal],
	cast([OwnerCountry] as nvarchar(200)) [OwnerCountry],
	cast([ShippingFirstName] as nvarchar(500)) [ShippingFirstName],
	cast([BillingFirstName] as nvarchar(500)) [BillingFirstName],
	cast([BillingCity] as nvarchar(40)) [BillingCity],
	cast([BillingStateregion] as nvarchar(40)) [BillingStateRegion],
	cast([BillingzipPostal] as varchar(128)) [BillingZipPostal],
	cast([BillingCountry] as nvarchar(40)) [BillingCountry],
	cast([OwnerStreet1] as varchar(128)) [OwnerStreet1],
	cast([OwnerStreet2] as varchar(128)) [OwnerStreet2],
	cast([ShippingCity] as nvarchar(100)) [ShippingCity],
	cast([ShippingStateregion] as nvarchar(50)) [ShippingStateRegion],
	cast([ShippingzipPostal] as varchar(128)) [ShippingZipPostal],
	cast([ShippingCountry] as nvarchar(100)) [ShippingCountry],
	cast([BillingStreet1] as varchar(128)) [BillingStreet1],
	cast([BillingStreet2] as varchar(128)) [BillingStreet2],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([Currency] as nvarchar(10)) [Currency],
	cast([Type] as nvarchar(50)) [Type],
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


