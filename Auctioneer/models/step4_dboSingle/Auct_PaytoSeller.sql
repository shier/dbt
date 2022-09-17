{{ config(materialized='table',schema='dbo')}}
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