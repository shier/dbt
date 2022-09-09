{{ config(materialized='view',schema='stg')}}
Select
	[DOCUMENTID] [DocumentID],
	[LOTNUMBER] [LotNumber],
	cast([UNCPATH] as nvarchar(4000)) [UncPath],
	[AUCTIONID] [AuctionID],
	[CAPTUREDTIME] [CapturedTime],
	[CREATED] [Created],
	cast([FILENAME] as nvarchar(4000)) [FileName],
	cast([ARCHIVEUNCPATH] as nvarchar(4000)) [ArchiveUncPath]
From stg.[Auct_DocumentationFiles_Raw]
