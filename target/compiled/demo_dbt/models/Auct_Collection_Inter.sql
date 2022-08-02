
Select
	cast(NAME as nvarchar(4000)) Name,
	cast(DESCRIPTION as nvarchar(4000)) Description,
	COLLECTIONID CollectionID,
	AUCTIONID AuctionID,
	ACTIVE Active
From Auct_Collection_Raw