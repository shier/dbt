{{ config(materialized='table',schema='dbo')}}
Select
	cast([Qty] as int) [QTY],
	cast([Cnt] as int) [CNT],
	cast([In_Nav] as int) [InNAV],
	cast([Document_Type] as int) [DocumentType],
	cast([In_Nav_Date] as datetime) [InNAVDate],
	cast([Price] as money) [Price],
	cast([Ship_Amount] as money) [ShippingAmountDollars],
	cast([Tax_Amount] as money) [TaxAmountDollars],
	cast([Discount] as money) [DiscountPrice],
	cast([Merchant_ID] as varchar(100)) [MerchantID],
	cast([Customer_No] as varchar(300)) [CustomerNumber],
	cast([SKU] as varchar(64)) [SKU],
	cast([Date_Nav] as date) [DateNav],
	cast([Document_No] as varchar(300)) [DocumentNumber],
	cast([Ship_Gl_No] as varchar(300)) [ShippingGLNumber],
	cast([Tax_State] as varchar(50)) [TaxState],
	cast([Tax_Gl_No] as varchar(300)) [TaxGLNumber],
	cast([Discount_Gl_No] as varchar(300)) [DiscountGLNumber] 
From stg.[Mer_OrderRollup_FinalView]