
  
  if object_id ('"stg"."Auct_WorldRecords_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WorldRecords_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_WorldRecords_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_WorldRecords_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_WorldRecords_Inter__dbt_tmp_temp_view as
    
Select
	AUCTIONID AuctionID,
	CREATED Created,
	cast(COMMENTS as nvarchar(4000)) Comments,
	LOTNUMBER LotNumber,
	WRSH Wrsh,
	WRSSCM Wrsscm,
	WRSP Wrsp
From Auct_WorldRecords_Raw
    ');

  CREATE TABLE "stg"."Auct_WorldRecords_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_WorldRecords_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_WorldRecords_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WorldRecords_Inter__dbt_tmp_temp_view"
    end


