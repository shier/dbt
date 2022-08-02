
  
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
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	CreatedDTTM Createddttm,
	FulfilledDTTM Fulfilleddttm,
	PaidDTTM Paiddttm,
	Id ID,
	ShippingOptionId ShippingOptionID,
	PayerId PayerID,
	OwnerId OwnerID,
	AuctionEventId AuctionEventID,
	PropertyBagId PropertybagID,
	IsPayerLocked IsPayerLocked,
	Shipped Shipped,
	IsArchived IsArchived,
	BuyersPremiumPercent BuyersPremiumPercent,
	BuyersPremiumAmount BuyersPremiumAmount,
	ShippingAmount ShippingAmount,
	Subtotal SubTotal,
	Total Total,
	SalesTax SalesTax,
	cast(ShippingDetails as nvarchar(4000)) Shippingdetails,
	cast(Status as nvarchar(4000)) Status,
	cast(Comments as nvarchar(4000)) Comments,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Currency as nvarchar(4000)) Currency,
	cast(OwnerCountry as nvarchar(4000)) OwnerCountry,
	cast(ShippingFirstName as nvarchar(4000)) ShippingFirstName,
	cast(BillingFirstName as nvarchar(4000)) BillingFirstName,
	cast(ShippingLastName as nvarchar(4000)) ShippingLastName,
	cast(BillingLastName as nvarchar(4000)) BillingLastName,
	cast(OwnerName as nvarchar(4000)) OwnerName,
	cast(BillingCountry as nvarchar(4000)) BillingCountry,
	cast(OwnerStreet1 as nvarchar(4000)) OwnersTreet1,
	cast(OwnerStreet2 as nvarchar(4000)) OwnersTreet2,
	cast(OwnerCity as nvarchar(4000)) OwnerCity,
	cast(OwnerStateRegion as nvarchar(4000)) OwnerStateregion,
	cast(OwnerZipPostal as nvarchar(4000)) OwnerzipPostal,
	cast(ShippingCountry as nvarchar(4000)) ShippingCountry,
	cast(BillingStreet1 as nvarchar(4000)) BillingsTreet1,
	cast(BillingStreet2 as nvarchar(4000)) BillingsTreet2,
	cast(BillingCity as nvarchar(4000)) BillingCity,
	cast(BillingStateRegion as nvarchar(4000)) BillingStateregion,
	cast(BillingZipPostal as nvarchar(4000)) BillingzipPostal,
	cast(Type as nvarchar(4000)) Type,
	cast(ShippingStreet1 as nvarchar(4000)) ShippingsTreet1,
	cast(ShippingStreet2 as nvarchar(4000)) ShippingsTreet2,
	cast(ShippingCity as nvarchar(4000)) ShippingCity,
	cast(ShippingStateRegion as nvarchar(4000)) ShippingStateregion,
	cast(ShippingZipPostal as nvarchar(4000)) ShippingzipPostal
From AH_Invoices_Raw
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


