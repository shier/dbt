
  
  if object_id ('"dbo_dbo"."AH_LineItems_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_dbo"."AH_LineItems_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo_dbo"."AH_LineItems_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo_dbo"."AH_LineItems_FT__dbt_tmp"
    end


   EXEC('create view dbo_dbo.AH_LineItems_FT__dbt_tmp_temp_view as
    

with updateData as (
    select 
     	FTstg.[LineItemsID],
		FTtmp.[Consignor_Skey],
		FTtmp.[Buyer_Skey],
		FTstg.[InvoiceID],
		FTstg.[ListingID],
		FTstg.[Description],
		FTstg.[LastUpdatedUser],
		FTstg.[Currency],
		FTstg.[Status],
		FTstg.[Type],
		FTstg.[TotalAmount],
		FTstg.[QTY],
		FTstg.[PerUnitAmount],
		FTstg.[IsTaxable],
		FTstg.[IsArchived],
		FTstg.[Relistiteration],
		FTstg.[HasBuyerPremiumApplies],
		FTstg.[IsPayerArchived],
		FTstg.[DateStamp],
		FTstg.[CreatedDate],
		FTstg.[UpdatedDate],
		FTstg.[DeletedDate]
    from stg.AH_LineItems_FT_tmp as FTtmp 
    join stg.AH_LineItems_FT_stg as FTstg 
    on FTstg.LineItemsID=FTtmp.LineItemsID
),
insertData as (
    select 
        [LineItemsID],
        [Consignor_Skey],
        [Buyer_Skey],
        [InvoiceID],
        [ListingID],
        [Description],
        [LastUpdatedUser],
        [Currency],
        [Status],
        [Type],
        [TotalAmount],
        [QTY],
        [PerUnitAmount],
        [IsTaxable],
        [IsArchived],
        [Relistiteration],
        [HasBuyerPremiumApplies],
        [IsPayerArchived],
        [DateStamp],
        [CreatedDate],
        [UpdatedDate],
        [DeletedDate]
    from stg.AH_LineItems_FT_tmp
    where LineItemsID not in (select  LineItemsID from stg.AH_LineItems_FT_stg)
)
SELECT
	[LineItemsID],
	[Consignor_Skey],
	[Buyer_Skey],
	[InvoiceID],
	[ListingID],
	[Description],
	[LastUpdatedUser],
	[Currency],
	[Status],
	[Type],
	[TotalAmount],
	[QTY],
	[PerUnitAmount],
	[IsTaxable],
	[IsArchived],
	[Relistiteration],
	[HasBuyerPremiumApplies],
	[IsPayerArchived],
	[DateStamp],
	[CreatedDate],
	[UpdatedDate],
	[DeletedDate]
from updateData

union all

SELECT
	[LineItemsID],
	[Consignor_Skey],
	[Buyer_Skey],
	[InvoiceID],
	[ListingID],
	[Description],
	[LastUpdatedUser],
	[Currency],
	[Status],
	[Type],
	[TotalAmount],
	[QTY],
	[PerUnitAmount],
	[IsTaxable],
	[IsArchived],
	[Relistiteration],
	[HasBuyerPremiumApplies],
	[IsPayerArchived],
	[DateStamp],
	[CreatedDate],
	[UpdatedDate],
	[DeletedDate]
from insertData
    ');

  CREATE TABLE "dbo_dbo"."AH_LineItems_FT__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo_dbo.AH_LineItems_FT__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo_dbo"."AH_LineItems_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_dbo"."AH_LineItems_FT__dbt_tmp_temp_view"
    end


