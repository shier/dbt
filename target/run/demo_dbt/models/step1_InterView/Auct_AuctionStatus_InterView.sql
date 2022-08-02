create view "stg"."Auct_AuctionStatus_InterView__dbt_tmp" as
    
Select
	[AUCTIONSTATUSID] [AuctionStatusID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_AuctionStatus_Raw]
