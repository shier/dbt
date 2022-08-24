{{ config(materialized='view',schema='stg')}}
Select
	[PHOTODIRECTORYID] [PhotoDirectoryID],
	cast([UNCPATH] as nvarchar(4000)) [UncPath],
	cast([TYPENAME] as nvarchar(4000)) [TypeName],
	[ACTIVE] [Active],
	[DIRECTORYTYPEID] [DirectoryTypeID],
	[AUCTIONID] [AuctionID],
	[ISCDN] [IsCDN]
From stg.[Auct_PhotoDirectory_Raw]
