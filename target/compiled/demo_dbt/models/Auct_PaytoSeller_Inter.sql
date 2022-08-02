
Select
	TITLERECEIVED TitleReceived,
	SELLERCOMMISSION SellerCommission,
	SELLERCOMMISSIONPERCENT SellerCommissionPercent,
	FEETOTAL FeeTotal,
	PAIDFROMESCROW PaidFromescrow,
	TOTALOWEDTOSELLER TotalowedtoSeller,
	AMOUNTPAIDTOSELLER AmountPaidtoSeller,
	LOTNUMBER LotNumber,
	HAMMER Hammer,
	PAYTOSELLERID PaytoSellerID,
	VERIFIEDBYUSERID VerifiedByUserID,
	cast(SELLERNAME as nvarchar(4000)) SellerName,
	cast(LOTSPURCHASED as nvarchar(4000)) LotsPurchased,
	cast(VERFIEDBYUSERNAME as nvarchar(4000)) VerfiedByUserName,
	cast(PAYMENTTYPENAME as nvarchar(4000)) PaymentTypeName,
	cast(COMPANYNAME as nvarchar(4000)) CompanyName,
	cast(ADDRESS as nvarchar(4000)) Address,
	cast(ACCOUNTINGID as nvarchar(4000)) AccountingID,
	cast(NOTES as nvarchar(4000)) Notes
From Auct_PaytoSeller_Raw