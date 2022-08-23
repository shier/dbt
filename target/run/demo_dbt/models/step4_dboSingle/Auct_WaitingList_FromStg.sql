
  
  if object_id ('"dbo"."Auct_WaitingList_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_WaitingList_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_WaitingList_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_WaitingList_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_WaitingList_FromStg__dbt_tmp_temp_view as
    
Select
	cast([WaitingListID] as int) [WaitingListID],
	cast([AuctionID] as int) [AuctionID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([WaitingStateBit] as int) [WaitingStateBit],
	cast([WaitingListTypeID] as int) [WaitingListTypeID],
	cast([CreatedByUserName] as nvarchar(4000)) [CreatedByUserName],
	cast([Created] as datetime) [Created] 
From stg.[Auct_WaitingList_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_WaitingList_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_WaitingList_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_WaitingList_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_WaitingList_FromStg__dbt_tmp_temp_view"
    end


