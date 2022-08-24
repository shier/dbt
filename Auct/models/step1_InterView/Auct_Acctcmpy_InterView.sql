{{ config(materialized='view',schema='stg')}}
Select
	[ID] [ID],
	[AUCTIONID] [AuctionID],
	[COMPANYID] [CompanyID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Acctcmpy_Raw]
