
Select
	cast([AuctionCompanyID] as int) [AUCTIONCOMPANYID],
	cast([CompanyID] as int) [COMPANYID],
	cast([Logo] as nvarchar(4000)) [LOGO],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AuctionCompany_FinalView]