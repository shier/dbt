
  
  if object_id ('"dbo"."Auct_WaitingList__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_WaitingList__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_WaitingList__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_WaitingList__dbt_tmp"
    end


   EXEC('create view dbo.Auct_WaitingList__dbt_tmp_temp_view as
    
Select
	cast([AuctionID] as int) [AUCTIONID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([WaitingStateBit] as int) [WAITINGSTATEBIT],
	cast([WaitingListTypeID] as int) [WAITINGLISTTYPEID],
	cast([CreatedByUserName] as nvarchar(4000)) [CREATEDBYUSERNAME],
	cast([Created] as datetime) [CREATED],
	cast([WaitingListID] as int) [WAITINGLISTID] 
From stg.[Auct_WaitingList_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_WaitingList__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_WaitingList__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_WaitingList__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_WaitingList__dbt_tmp_temp_view"
    end


