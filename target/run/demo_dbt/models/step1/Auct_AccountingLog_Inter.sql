
  
  if object_id ('"stg"."Auct_AccountingLog_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AccountingLog_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AccountingLog_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AccountingLog_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AccountingLog_Inter__dbt_tmp_temp_view as
    
Select
	[ACCOUNTINGLOGID] [AccountingLogID],
	[AUCTIONID] [AuctionID],
	[CONSIGNMENTID] [ConsignmentID],
	[AUCTIONBIDDERID] [AuctionBidderID],
	[BLOCKSALEID] [BlockSaleID],
	cast([FIELDNAME] as nvarchar(4000)) [FieldName],
	cast([OLDVALUE] as nvarchar(4000)) [Oldvalue],
	cast([NEWVALUE] as nvarchar(4000)) [Newvalue],
	cast([CHANGEDBYUSERNAME] as nvarchar(4000)) [ChangedByUserName],
	[CHANGEDSTAMP] [ChangedStamp]
From stg.[Auct_AccountingLog_Raw]
    ');

  CREATE TABLE "stg"."Auct_AccountingLog_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AccountingLog_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AccountingLog_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AccountingLog_Inter__dbt_tmp_temp_view"
    end


