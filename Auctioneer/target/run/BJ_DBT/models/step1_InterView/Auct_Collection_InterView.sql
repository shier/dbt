create view "stg"."Auct_Collection_InterView__dbt_tmp" as
    
Select
	[COLLECTIONID] [CollectionID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[AUCTIONID] [AuctionID],
	[ACTIVE] [Active]
From stg.[Auct_Collection_Raw]