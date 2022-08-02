
Select
	cast(UNCPATH as nvarchar(4000)) UncPath,
	cast(TYPENAME as nvarchar(4000)) TypeName,
	PHOTODIRECTORYID PhotoDirectoryID,
	ACTIVE Active,
	DIRECTORYTYPEID DirectoryTypeID,
	AUCTIONID AuctionID,
	ISCDN IsCDN
From Auct_PhotoDirectory_Raw