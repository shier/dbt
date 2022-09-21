
  
  if object_id ('"dbo"."Auct_AccountingLog__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AccountingLog__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AccountingLog__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AccountingLog__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AccountingLog__dbt_tmp_temp_view as
    
Select
	cast([AuctionID] as int) [AUCTIONID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([AuctionBidderID] as int) [AUCTIONBIDDERID],
	cast([BlockSaleID] as int) [BLOCKSALEID],
	cast([FieldName] as nvarchar(4000)) [FIELDNAME],
	cast([Oldvalue] as nvarchar(4000)) [OLDVALUE],
	cast([Newvalue] as nvarchar(4000)) [NEWVALUE],
	cast([ChangedByUserName] as nvarchar(4000)) [CHANGEDBYUSERNAME],
	cast([ChangedStamp] as DATETIME) [CHANGEDSTAMP],
	cast([AccountingLogID] as int) [ACCOUNTINGLOGID] 
From stg.[Auct_AccountingLog_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AccountingLog__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AccountingLog__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AccountingLog__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AccountingLog__dbt_tmp_temp_view"
    end


