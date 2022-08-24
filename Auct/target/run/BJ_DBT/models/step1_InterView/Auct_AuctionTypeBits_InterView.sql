create view "dbo_stg"."Auct_AuctionTypeBits_InterView__dbt_tmp" as
    
Select
	[AUCTIONTYPEBIT] [AuctionTypeBit],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_AuctionTypeBits_Raw]
