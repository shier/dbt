
  
  if object_id ('"stg"."Auct_WaitingList_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WaitingList_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_WaitingList_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_WaitingList_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_WaitingList_Inter__dbt_tmp_temp_view as
    
Select
	[WAITINGLISTID] [WaitingListID],
	[AUCTIONID] [AuctionID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[WAITINGSTATEBIT] [WaitingStateBit],
	[WAITINGLISTTYPEID] [WaitingListTypeID],
	cast([CREATEDBYUSERNAME] as nvarchar(4000)) [CreatedByUserName],
	[CREATED] [Created]
From stg.[Auct_WaitingList_Raw]
    ');

  CREATE TABLE "stg"."Auct_WaitingList_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_WaitingList_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_WaitingList_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WaitingList_Inter__dbt_tmp_temp_view"
    end


