{{ config(materialized='table',schema='dbo')}}
Select
	cast([PhotoDirectoryID] as int) [PhotoDirectoryID],
	cast([UncPath] as nvarchar(4000)) [UncPath],
	cast([TypeName] as nvarchar(4000)) [TypeName],
	cast([Active] as int) [Active],
	cast([DirectoryTypeID] as int) [DirectoryTypeID],
	cast([AuctionID] as int) [AuctionID],
	cast([IsCDN] as int) [IsCDN] 
From stg.[Auct_PhotoDirectory_FinalView]