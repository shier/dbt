
Select
	cast(UNCPATH as nvarchar(4000)) UncPath,
	cast(FILENAME as nvarchar(4000)) FileName,
	cast(ARCHIVEUNCPATH as nvarchar(4000)) ArchiveUncPath,
	LOTNUMBER LotNumber,
	DOCUMENTID DocumentID,
	AUCTIONID AuctionID,
	CAPTUREDTIME CapturedTime,
	CREATED Created
From Auct_DocumentationFiles_Raw