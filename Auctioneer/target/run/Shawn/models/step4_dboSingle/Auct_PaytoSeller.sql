
  
  if object_id ('"dbo"."Auct_PaytoSeller__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PaytoSeller__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_PaytoSeller__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_PaytoSeller__dbt_tmp"
    end


   EXEC('create view dbo.Auct_PaytoSeller__dbt_tmp_temp_view as
    
Select
	cast([PaytoSellerID] as int) [PAYTOSELLERID],
	cast([AccountingID] as nvarchar(4000)) [ACCOUNTINGID],
	cast([SellerName] as nvarchar(4000)) [SELLERNAME],
	cast([LotsPurchased] as nvarchar(4000)) [LOTSPURCHASED],
	cast([VerifiedByUserID] as int) [VERIFIEDBYUSERID],
	cast([VerfiedByUserName] as nvarchar(4000)) [VERFIEDBYUSERNAME],
	cast([PaymentTypeName] as nvarchar(4000)) [PAYMENTTYPENAME],
	cast([CompanyName] as nvarchar(4000)) [COMPANYNAME],
	cast([Address] as nvarchar(4000)) [ADDRESS],
	cast([Notes] as nvarchar(4000)) [NOTES],
	cast([LotNumber] as numeric(18,0)) [LOTNUMBER],
	cast([Hammer] as numeric(18,0)) [HAMMER],
	cast([SellerCommission] as numeric(18,0)) [SELLERCOMMISSION],
	cast([SellerCommissionPercent] as numeric(18,0)) [SELLERCOMMISSIONPERCENT],
	cast([FeeTotal] as numeric(18,0)) [FEETOTAL],
	cast([PaidFromescrow] as numeric(18,0)) [PAIDFROMESCROW],
	cast([TotalowedtoSeller] as numeric(18,0)) [TOTALOWEDTOSELLER],
	cast([AmountPaidtoSeller] as numeric(18,0)) [AMOUNTPAIDTOSELLER],
	cast([TitleReceived] as bit) [TITLERECEIVED] 
From stg.[Auct_PaytoSeller_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_PaytoSeller__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_PaytoSeller__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_PaytoSeller__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PaytoSeller__dbt_tmp_temp_view"
    end


