
  
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
	cast([Status] as nvarchar(100)) [Status_RWXLineItems],
	cast([Type] as nvarchar(50)) [Type_RWXLineItems],
	cast([LotNumber] as nvarchar(4000)) [LotNumber],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXLineItems],
	cast([CreatedOn] as datetime) [Created_RWXLineItems],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXLineItems],
	cast([DeletedOn] as datetime) [DeletedDate_RWXLineItems],
	cast([DaTestamp] as datetime) [DateStamp],
	cast([ID] as int) [LineItemsID],
	cast([InvoiceID] as int) [InvoiceID_RWXLineItems],
	cast([ListingID] as int) [ListingID],
	cast([Quantity] as int) [QTY],
	cast([OwnerID] as int) [OwnerID_RWXLineItems],
	cast([PayerID] as int) [UserID],
	cast([ReListiteration] as int) [ReListiteration],
	cast([AuctionEventID] as int) [AuctionEventID],
	cast([TotalAmount] as decimal(24,2)) [TotalAmount],
	cast([PeRunitAmount] as decimal(24,2)) [PerUnitAmount],
	cast([Taxable] as bit) [IsTaxable],
	cast([IsArchived] as bit) [IsArchived_RWXLineItems],
	cast([BuyersPremiuMapplies] as bit) [HasBuyerPremiumApplies],
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


