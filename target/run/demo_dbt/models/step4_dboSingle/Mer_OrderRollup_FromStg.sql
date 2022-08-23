
  
  if object_id ('"dbo"."Mer_OrderRollup_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_OrderRollup_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_OrderRollup_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_OrderRollup_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_OrderRollup_FromStg__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "dbo"."Mer_OrderRollup_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_OrderRollup_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_OrderRollup_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_OrderRollup_FromStg__dbt_tmp_temp_view"
    end


