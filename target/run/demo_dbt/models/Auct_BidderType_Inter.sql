
  
  if object_id ('"stg"."Auct_BidderType_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderType_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BidderType_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BidderType_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BidderType_Inter__dbt_tmp_temp_view as
    
Select
	CREATED Created,
	BIDDERTYPEID BidderTypeID,
	UPDATEEVENTID UpdateEventID,
	cast(NAME as nvarchar(4000)) Name
From Auct_BidderType_Raw
    ');

  CREATE TABLE "stg"."Auct_BidderType_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BidderType_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BidderType_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderType_Inter__dbt_tmp_temp_view"
    end


