
  
  if object_id ('"dbo"."AH_LineItems__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_LineItems__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_LineItems__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_LineItems__dbt_tmp"
    end


   EXEC('create view dbo.AH_LineItems__dbt_tmp_temp_view as
    
Select
	cast([Currency] as nvarchar(10)) [Currency],
	cast([Status] as nvarchar(100)) [Status],
	cast([Type] as nvarchar(50)) [Type],
	cast([LotNumber] as nvarchar(4000)) [LotNumber],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DaTestamp] as datetime) [DateStamp],
	cast([ID] as int) [Id],
	cast([InvoiceID] as int) [InvoiceId],
	cast([ListingID] as int) [ListingId],
	cast([Quantity] as int) [Quantity],
	cast([OwnerID] as int) [OwnerId],
	cast([PayerID] as int) [PayerId],
	cast([ReListiteration] as int) [RelistIteration],
	cast([AuctionEventID] as int) [AuctionEventId],
	cast([TotalAmount] as decimal(24,2)) [TotalAmount],
	cast([PeRunitAmount] as decimal(24,2)) [PerUnitAmount],
	cast([Taxable] as bit) [Taxable],
	cast([IsArchived] as bit) [IsArchived],
	cast([BuyersPremiuMapplies] as bit) [BuyersPremiumApplies],
	cast([IsPayerArchived] as bit) [IsPayerArchived] 
From stg.[AH_LineItems_FinalView]
    ');

  CREATE TABLE "dbo"."AH_LineItems__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_LineItems__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_LineItems__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_LineItems__dbt_tmp_temp_view"
    end


