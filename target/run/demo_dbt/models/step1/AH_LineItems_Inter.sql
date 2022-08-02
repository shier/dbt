
  
  if object_id ('"stg"."AH_LineItems_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_LineItems_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_LineItems_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_LineItems_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_LineItems_Inter__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "stg"."AH_LineItems_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_LineItems_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_LineItems_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_LineItems_Inter__dbt_tmp_temp_view"
    end


