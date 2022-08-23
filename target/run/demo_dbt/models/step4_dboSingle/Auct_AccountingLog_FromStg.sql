
  
  if object_id ('"dbo"."Auct_AccountingLog_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AccountingLog_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AccountingLog_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AccountingLog_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AccountingLog_FromStg__dbt_tmp_temp_view as
    
Select
	cast([AccountingLogID] as int) [AccountingLogID],
	cast([AuctionID] as int) [AuctionID],
	cast([ConsignmentID] as int) [ConSignmentID],
	cast([AuctionBidderID] as int) [AuctionbIDderid],
	cast([BlockSaleID] as int) [BLockSaleID],
	cast([FieldName] as nvarchar(4000)) [FieldName],
	cast([Oldvalue] as nvarchar(4000)) [OldValue],
	cast([Newvalue] as nvarchar(4000)) [NewValue],
	cast([ChangedByUserName] as nvarchar(4000)) [ChangedByUserName],
	cast([ChangedStamp] as DATETIME) [ChangedStamp] 
From stg.[Auct_AccountingLog_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AccountingLog_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AccountingLog_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AccountingLog_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AccountingLog_FromStg__dbt_tmp_temp_view"
    end


