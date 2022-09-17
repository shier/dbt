
  
  if object_id ('"dbo_stg"."AH_Invoices_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_stg"."AH_Invoices_FT_stg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo_stg"."AH_Invoices_FT_stg__dbt_tmp"','U') is not null
    begin
    drop table "dbo_stg"."AH_Invoices_FT_stg__dbt_tmp"
    end


   EXEC('create view dbo_stg.AH_Invoices_FT_stg__dbt_tmp_temp_view as
    
SELECT
	[Id] AS [InvoiceID],
	[PayerId] AS [PayerID],
	[OwnerId] AS [OwnerID],
	[CreatedOn] AS [CreatedDate],
	[UpdatedOn] AS [UpdatedDate],
	[DeletedOn] AS [DeletedDate],
	[Status],
	[CreatedDTTM],
	[FulfilledDTTM],
	[Comments] AS [Comment],
	[LastUpdatedUser],
	[Currency],
	[Type],
	[ShippingAmount],
	[Subtotal],
	[Total],
	[ShippingFirstName],
	[ShippingLastName],
	[ShippingStreet1],
	[ShippingStreet2],
	[ShippingCity],
	[ShippingStateRegion] AS [ShippingState],
	[ShippingZipPostal] AS [ShippingPostalCode],
	[ShippingCountry],
	[BIllingFIrstName] AS [BillingFIrstName],
	[BillingLastName],
	[BillingStreet1],
	[BillingStreet2],
	[BillingCity],
	[BillingStateRegion] AS [BillingState],
	[BillingZIpPostal] AS [BillingPostalCode],
	[BillingCountry],
	[SalesTax],
	[PaidDTTM],
	[IsPayerLocked],
	[Shipped] AS [HasShipped],
	[ShippingDetails],
	[BuyersPremiumPercent] AS [BuyerPremiumPct],
	[BuyersPremiumAmount] AS [BuyerPremiumAmount],
	[IsArchived]
FROM [stg].[AH_Invoices_FinalView];
    ');

  CREATE TABLE "dbo_stg"."AH_Invoices_FT_stg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo_stg.AH_Invoices_FT_stg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo_stg"."AH_Invoices_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_stg"."AH_Invoices_FT_stg__dbt_tmp_temp_view"
    end


