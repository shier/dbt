{{ config(materialized='view',schema='stg')}}
Select
	[AUCTIONCOMPANYID] [AuctionCompanyID],
	[COMPANYID] [CompanyID],
	cast([LOGO] as nvarchar(4000)) [Logo],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AuctionCompany_Raw]
