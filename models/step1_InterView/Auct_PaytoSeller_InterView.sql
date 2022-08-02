{{ config(materialized='view',schema='stg')}}
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
