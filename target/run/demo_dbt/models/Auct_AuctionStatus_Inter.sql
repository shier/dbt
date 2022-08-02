
  
  if object_id ('"stg"."Auct_AuctionStatus_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionStatus_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AuctionStatus_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AuctionStatus_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AuctionStatus_Inter__dbt_tmp_temp_view as
    
Select
	AUCTIONSTATUSID AuctionStatusID,
	cast(NAME as nvarchar(4000)) Name,
	ACTIVE Active
From Auct_AuctionStatus_Raw
    ');

  CREATE TABLE "stg"."Auct_AuctionStatus_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AuctionStatus_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AuctionStatus_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionStatus_Inter__dbt_tmp_temp_view"
    end


