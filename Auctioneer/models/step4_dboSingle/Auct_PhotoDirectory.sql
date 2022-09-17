{{ config(materialized='table',schema='dbo')}}
Select
	cast([PhotoDirectoryID] as int) [PHOTODIRECTORYID],
	cast([UncPath] as nvarchar(4000)) [UNCPATH],
	cast([TypeName] as nvarchar(4000)) [TYPENAME],
	cast([Active] as int) [ACTIVE],
	cast([DirectoryTypeID] as int) [DIRECTORYTYPEID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([IsCDN] as int) [ISCDN] 
From stg.[Auct_PhotoDirectory_FinalView]