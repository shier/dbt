create view "stg"."AH_LineItems_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	cast([Currency] as nvarchar(4000)) [Currency],
	cast([Status] as nvarchar(4000)) [Status],
	cast([Type] as nvarchar(4000)) [Type],
	cast([LotNumber] as nvarchar(4000)) [LotNumber],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[DateStamp] [DaTestamp],
	[InvoiceId] [InvoiceID],
	[ListingId] [ListingID],
	[Quantity] [Quantity],
	[OwnerId] [OwnerID],
	[PayerId] [PayerID],
	[RelistIteration] [ReListiteration],
	[AuctionEventId] [AuctionEventID],
	[TotalAmount] [TotalAmount],
	[PerUnitAmount] [PeRunitAmount],
	[Taxable] [Taxable],
	[IsArchived] [IsArchived],
	[BuyersPremiumApplies] [BuyersPremiuMapplies],
	[IsPayerArchived] [IsPayerArchived]
From stg.[AH_LineItems_Raw]
