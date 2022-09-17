{{ config(materialized='table',schema='dbo')}}
Select
	cast([Active] as bit) [ACTIVE],
	cast([DocumentImageID] as int) [DOCUMENTIMAGEID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([DocumentImageTypeID] as int) [DOCUMENTIMAGETYPEID],
	cast([UncPath] as nvarchar(4000)) [UNCPATH],
	cast([FullPath] as nvarchar(4000)) [FULLPATH],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Expiration] as DATETIME) [EXPIRATION],
	cast([Created] as DATETIME) [CREATED],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([Height] as int) [HEIGHT],
	cast([Width] as int) [WIDTH] 
From stg.[Auct_DocumentImage_FinalView]