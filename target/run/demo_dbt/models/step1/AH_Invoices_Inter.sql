
  
  if object_id ('"stg"."AH_Invoices_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Invoices_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Invoices_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Invoices_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Invoices_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[PaidDTTM] [Paiddttm],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[CreatedDTTM] [Createddttm],
	[FulfilledDTTM] [Fulfilleddttm],
	[PropertyBagId] [PropertybagID],
	[ShippingOptionId] [ShippingOptionID],
	[PayerId] [PayerID],
	[OwnerId] [OwnerID],
	[AuctionEventId] [AuctionEventID],
	[SalesTax] [SalesTax],
	[BuyersPremiumPercent] [BuyersPremiumPercent],
	[BuyersPremiumAmount] [BuyersPremiumAmount],
	[ShippingAmount] [ShippingAmount],
	[Subtotal] [SubTotal],
	[Total] [Total],
	[IsPayerLocked] [IsPayerLocked],
	[Shipped] [Shipped],
	[IsArchived] [IsArchived],
	cast([Status] as nvarchar(4000)) [Status],
	cast([ShippingLastName] as nvarchar(4000)) [ShippingLastName],
	cast([BillingLastName] as nvarchar(4000)) [BillingLastName],
	cast([OwnerName] as nvarchar(4000)) [OwnerName],
	cast([ShippingDetails] as nvarchar(4000)) [Shippingdetails],
	cast([OwnerCity] as nvarchar(4000)) [OwnerCity],
	cast([OwnerStateRegion] as nvarchar(4000)) [OwnerStateregion],
	cast([OwnerZipPostal] as nvarchar(4000)) [OwnerzipPostal],
	cast([OwnerCountry] as nvarchar(4000)) [OwnerCountry],
	cast([ShippingFirstName] as nvarchar(4000)) [ShippingFirstName],
	cast([BillingFirstName] as nvarchar(4000)) [BillingFirstName],
	cast([BillingCity] as nvarchar(4000)) [BillingCity],
	cast([BillingStateRegion] as nvarchar(4000)) [BillingStateregion],
	cast([BillingZipPostal] as nvarchar(4000)) [BillingzipPostal],
	cast([BillingCountry] as nvarchar(4000)) [BillingCountry],
	cast([OwnerStreet1] as nvarchar(4000)) [OwnerStreet1],
	cast([OwnerStreet2] as nvarchar(4000)) [OwnerStreet2],
	cast([ShippingCity] as nvarchar(4000)) [ShippingCity],
	cast([ShippingStateRegion] as nvarchar(4000)) [ShippingStateregion],
	cast([ShippingZipPostal] as nvarchar(4000)) [ShippingzipPostal],
	cast([ShippingCountry] as nvarchar(4000)) [ShippingCountry],
	cast([BillingStreet1] as nvarchar(4000)) [BillingStreet1],
	cast([BillingStreet2] as nvarchar(4000)) [BillingStreet2],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Currency] as nvarchar(4000)) [Currency],
	cast([Type] as nvarchar(4000)) [Type],
	cast([ShippingStreet1] as nvarchar(4000)) [ShippingStreet1],
	cast([ShippingStreet2] as nvarchar(4000)) [ShippingStreet2]
From stg.[AH_Invoices_Raw]
    ');

  CREATE TABLE "stg"."AH_Invoices_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Invoices_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Invoices_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Invoices_Inter__dbt_tmp_temp_view"
    end


