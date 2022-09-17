
  
  if object_id ('"dbo_dbo"."AH_Invoice_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_dbo"."AH_Invoice_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo_dbo"."AH_Invoice_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo_dbo"."AH_Invoice_FT__dbt_tmp"
    end


   EXEC('create view dbo_dbo.AH_Invoice_FT__dbt_tmp_temp_view as
    

with updateData as (
    select 
        FTstg.[InvoiceID],
		FTtmp.[Consignor_Skey],
		FTtmp.[Buyer_Skey],
		FTstg.[CreatedDate],
		FTstg.[UpdatedDate],
		FTstg.[DeletedDate],
		FTstg.[Status],
		FTstg.[CreatedDTTM],
		FTstg.[FulfilledDTTM],
		FTstg.[Comment],
		FTstg.[LastUpdatedUser],
		FTstg.[Currency],
		FTstg.[Type],
		FTstg.[ShippingAmount],
		FTstg.[Subtotal],
		FTstg.[Total],
		FTstg.[ShippingFirstName],
		FTstg.[ShippingLastName],
		FTstg.[ShippingStreet1],
		FTstg.[ShippingStreet2],
		FTstg.[ShippingCity],
		FTstg.[ShippingState],
		FTstg.[ShippingPostalCode],
		FTstg.[ShippingCountry],
		FTstg.[BillingFIrstName],
		FTstg.[BillingLastName],
		FTstg.[BillingStreet1],
		FTstg.[BillingStreet2],
		FTstg.[BillingCity],
		FTstg.[BillingState],
		FTstg.[BillingPostalCode],
		FTstg.[BillingCountry],
		FTstg.[SalesTax],
		FTstg.[PaidDTTM],
		FTstg.[IsPayerLocked],
		FTstg.[HasShipped],
		FTstg.[ShippingDetails],
		FTstg.[BuyerPremiumPct],
		FTstg.[BuyerPremiumAmount],
		FTstg.[IsArchived]
    from stg.AH_Invoices_FT_tmp as FTtmp 
    join stg.AH_Invoices_FT_stg as FTstg 
    on FTstg.InvoiceID=FTtmp.InvoiceID
),
insertData as (
    select 
        [InvoiceID],
        [Consignor_Skey],
        [Buyer_Skey],
        [CreatedDate],
        [UpdatedDate],
        [DeletedDate],
        [Status],
        [CreatedDTTM],
        [FulfilledDTTM],
        [Comment],
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
        [ShippingState],
        [ShippingPostalCode],
        [ShippingCountry],
        [BillingFIrstName],
        [BillingLastName],
        [BillingStreet1],
        [BillingStreet2],
        [BillingCity],
        [BillingState],
        [BillingPostalCode],
        [BillingCountry],
        [SalesTax],
        [PaidDTTM],
        [IsPayerLocked],
        [HasShipped],
        [ShippingDetails],
        [BuyerPremiumPct],
        [BuyerPremiumAmount],
        [IsArchived]
    from stg.AH_Invoices_FT_tmp
    where InvoiceID not in (select  InvoiceID from stg.AH_Invoices_FT_stg)
)
SELECT
	[InvoiceID],
	[Consignor_Skey],
	[Buyer_Skey],
	[CreatedDate],
	[UpdatedDate],
	[DeletedDate],
	[Status],
	[CreatedDTTM],
	[FulfilledDTTM],
	[Comment],
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
	[ShippingState],
	[ShippingPostalCode],
	[ShippingCountry],
	[BillingFIrstName],
	[BillingLastName],
	[BillingStreet1],
	[BillingStreet2],
	[BillingCity],
	[BillingState],
	[BillingPostalCode],
	[BillingCountry],
	[SalesTax],
	[PaidDTTM],
	[IsPayerLocked],
	[HasShipped],
	[ShippingDetails],
	[BuyerPremiumPct],
	[BuyerPremiumAmount],
	[IsArchived]
from updateData

union all

SELECT
	[InvoiceID],
	[Consignor_Skey],
	[Buyer_Skey],
	[CreatedDate],
	[UpdatedDate],
	[DeletedDate],
	[Status],
	[CreatedDTTM],
	[FulfilledDTTM],
	[Comment],
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
	[ShippingState],
	[ShippingPostalCode],
	[ShippingCountry],
	[BillingFIrstName],
	[BillingLastName],
	[BillingStreet1],
	[BillingStreet2],
	[BillingCity],
	[BillingState],
	[BillingPostalCode],
	[BillingCountry],
	[SalesTax],
	[PaidDTTM],
	[IsPayerLocked],
	[HasShipped],
	[ShippingDetails],
	[BuyerPremiumPct],
	[BuyerPremiumAmount],
	[IsArchived]
from insertData
    ');

  CREATE TABLE "dbo_dbo"."AH_Invoice_FT__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo_dbo.AH_Invoice_FT__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo_dbo"."AH_Invoice_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_dbo"."AH_Invoice_FT__dbt_tmp_temp_view"
    end


