{{ config(materialized='table',schema='stg')}}
SELECT
	i.[InvoiceID],
	
    c.[Consignor_Skey],
    b.[Buyer_Skey],
	
    i.[PayerID],
    i.[OwnerID],
	
    i.[CreatedDate],
    i.[UpdatedDate],
    i.[DeletedDate],
    i.[Status],
    i.[CreatedDTTM],
    i.[FulfilledDTTM],
    i.[Comment],
    i.[LastUpdatedUser],
    i.[Currency],
    i.[Type],
    i.[ShippingAmount],
    i.[Subtotal],
    i.[Total],
	
    i.[ShippingFirstName],
    i.[ShippingLastName],
    i.[ShippingStreet1],
    i.[ShippingStreet2],
    i.[ShippingCity],
    i.[ShippingState],
    i.[ShippingPostalCode],
    i.[ShippingCountry],
	
    i.[BillingFIrstName],
    i.[BillingLastName],
    i.[BillingStreet1],
    i.[BillingStreet2],
    i.[BillingCity],
    i.[BillingState],
    i.[BillingPostalCode],
    i.[BillingCountry],
	
    i.[SalesTax],
    
    i.[PaidDTTM],
    i.[IsPayerLocked],
    i.[HasShipped],
    i.[ShippingDetails],
    i.[BuyerPremiumPct],
    i.[BuyerPremiumAmount],
    i.[IsArchived]
FROM
	[stg].[AH_Invoices_FT_stg] i
left join [dbo].[AH_Buyers_DM] b on i.PayerID=b.UserID
left join [dbo].[AH_Consignors_DM] c on i.OwnerID=c.UserID