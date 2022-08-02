{{ config(materialized='table',schema='dbo')}}
Select
	cast([DocumentImageID] as int) [DocumentImageID],
	cast([Active] as bit) [Active],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([DocumentImageTypeID] as int) [DocumentImageTypeID],
	cast([UncPath] as nvarchar(4000)) [UncPath],
	cast([FullPath] as nvarchar(4000)) [FullPath],
	cast([AuctionID] as int) [AuctionID],
	cast([Expiration] as DATETIME) [Expiration],
	cast([Created] as DATETIME) [Created],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([Height] as int) [Height],
	cast([Width] as int) [Width] 
From stg.[Auct_DocumentImage_FinalView]