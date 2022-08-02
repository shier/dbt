
  
  if object_id ('"stg"."Auct_PaytoSeller_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PaytoSeller_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_PaytoSeller_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_PaytoSeller_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_PaytoSeller_Inter__dbt_tmp_temp_view as
    
Select
	[PAYTOSELLERID] [PaytoSellerID],
	cast([ACCOUNTINGID] as nvarchar(4000)) [AccountingID],
	cast([SELLERNAME] as nvarchar(4000)) [SellerName],
	cast([LOTSPURCHASED] as nvarchar(4000)) [LotsPurchased],
	[VERIFIEDBYUSERID] [VerifiedByUserID],
	cast([VERFIEDBYUSERNAME] as nvarchar(4000)) [VerfiedByUserName],
	cast([PAYMENTTYPENAME] as nvarchar(4000)) [PaymentTypeName],
	cast([COMPANYNAME] as nvarchar(4000)) [CompanyName],
	cast([ADDRESS] as nvarchar(4000)) [Address],
	cast([NOTES] as nvarchar(4000)) [Notes],
	[LOTNUMBER] [LotNumber],
	[HAMMER] [Hammer],
	[SELLERCOMMISSION] [SellerCommission],
	[SELLERCOMMISSIONPERCENT] [SellerCommissionPercent],
	[FEETOTAL] [FeeTotal],
	[PAIDFROMESCROW] [PaidFromescrow],
	[TOTALOWEDTOSELLER] [TotalowedtoSeller],
	[AMOUNTPAIDTOSELLER] [AmountPaidtoSeller],
	[TITLERECEIVED] [TitleReceived]
From stg.[Auct_PaytoSeller_Raw]
    ');

  CREATE TABLE "stg"."Auct_PaytoSeller_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_PaytoSeller_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_PaytoSeller_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PaytoSeller_Inter__dbt_tmp_temp_view"
    end


