{{ config(materialized='table',schema='dbo')}}
Select
	cast([LotNumber] as numeric(18,2)) [LOTNUMBER],
	cast([DocumentID] as int) [DOCUMENTID],
	cast([UncPath] as nvarchar(4000)) [UNCPATH],
	cast([AuctionID] as int) [AUCTIONID],
	cast([CapturedTime] as DATETIME) [CAPTUREDTIME],
	cast([Created] as DATETIME) [CREATED],
	cast([FileName] as nvarchar(4000)) [FILENAME],
	cast([ArchiveUncPath] as nvarchar(4000)) [ARCHIVEUNCPATH] 
From stg.[Auct_DocumentationFiles_FinalView]