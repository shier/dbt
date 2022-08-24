create view "stg"."Auct_Acctcmpy_InterView__dbt_tmp" as
    
Select
	[ID] [ID],
	[AUCTIONID] [AuctionID],
	[COMPANYID] [CompanyID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Acctcmpy_Raw]
