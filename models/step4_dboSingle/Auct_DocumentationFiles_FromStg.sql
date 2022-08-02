{{ config(materialized='table',schema='dbo')}}
Select
	cast([DocumentID] as int) [DocumentID],
	cast([LotNumber] as numeric(18,2)) [LotNumber],
	cast([UncPath] as nvarchar(4000)) [UncPath],
	cast([AuctionID] as int) [AuctionID],
	cast([CapturedTime] as DATETIME) [CapturedTime],
	cast([Created] as DATETIME) [Created],
	cast([FileName] as nvarchar(4000)) [FileName],
	cast([ArchiveUncPath] as nvarchar(4000)) [ArchiveUncPath] 
From stg.[Auct_DocumentationFiles_FinalView]