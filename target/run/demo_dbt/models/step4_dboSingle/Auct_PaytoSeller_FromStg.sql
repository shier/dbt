
  
  if object_id ('"dbo"."Auct_PaytoSeller_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PaytoSeller_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_PaytoSeller_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_PaytoSeller_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_PaytoSeller_FromStg__dbt_tmp_temp_view as
    
Select
	cast([PaytoSellerID] as int) [PaytoSellerID],
	cast([AccountingID] as nvarchar(4000)) [AccountingID],
	cast([SellerName] as nvarchar(4000)) [SellerName],
	cast([LotsPurchased] as nvarchar(4000)) [LotsPurchased],
	cast([VerifiedByUserID] as int) [VerifiedByUserID],
	cast([VerfiedByUserName] as nvarchar(4000)) [VerfiedByUserName],
	cast([PaymentTypeName] as nvarchar(4000)) [PaymentTypeName],
	cast([CompanyName] as nvarchar(4000)) [CompanyName],
	cast([Address] as nvarchar(4000)) [Address],
	cast([Notes] as nvarchar(4000)) [Notes],
	cast([LotNumber] as numeric(18,0)) [LotNumber],
	cast([Hammer] as numeric(18,0)) [Hammer],
	cast([SellerCommission] as numeric(18,0)) [SellerCommission],
	cast([SellerCommissionPercent] as numeric(18,0)) [SellerCommissionPercent],
	cast([FeeTotal] as numeric(18,0)) [FeeTotal],
	cast([PaidFromescrow] as numeric(18,0)) [PaIDFromescrow],
	cast([TotalowedtoSeller] as numeric(18,0)) [TotalowedtoSeller],
	cast([AmountPaidtoSeller] as numeric(18,0)) [AmountpaIDtoSeller],
	cast([TitleReceived] as bit) [TitleReceived] 
From stg.[Auct_PaytoSeller_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_PaytoSeller_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_PaytoSeller_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_PaytoSeller_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PaytoSeller_FromStg__dbt_tmp_temp_view"
    end


