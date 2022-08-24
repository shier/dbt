create view "dbo_stg"."Auct_WorldRecords_InterView__dbt_tmp" as
    
Select
	[WRSP] [Wrsp],
	[LOTNUMBER] [LotNumber],
	[WRSH] [Wrsh],
	[WRSSCM] [Wrsscm],
	[AUCTIONID] [AuctionID],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	[CREATED] [Created]
From stg.[Auct_WorldRecords_Raw]
