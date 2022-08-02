
  
  if object_id ('"stg"."Auct_AuctioneerTest_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctioneerTest_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AuctioneerTest_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AuctioneerTest_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AuctioneerTest_Inter__dbt_tmp_temp_view as
    
Select
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	cast([COMPLETIONDATE] as nvarchar(4000)) [CompletionDate],
	cast([POSTDATE] as nvarchar(4000)) [PostDate],
	cast([POSTUSER] as nvarchar(4000)) [PostUser],
	cast([FUNCTION] as nvarchar(4000)) [Function],
	cast([OPERATIONS] as nvarchar(4000)) [Operations],
	cast([OBSERVATIONS] as nvarchar(4000)) [Observations],
	[AUCTIONEERTESTID] [AuctioneerTestID]
From stg.[Auct_AuctioneerTest_Raw]
    ');

  CREATE TABLE "stg"."Auct_AuctioneerTest_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AuctioneerTest_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AuctioneerTest_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctioneerTest_Inter__dbt_tmp_temp_view"
    end


