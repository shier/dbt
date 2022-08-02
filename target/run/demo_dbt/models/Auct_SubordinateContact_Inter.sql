
  
  if object_id ('"stg"."Auct_SubordinateContact_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SubordinateContact_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SubordinateContact_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SubordinateContact_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SubordinateContact_Inter__dbt_tmp_temp_view as
    
Select
	cast(DAYSCOVERING as nvarchar(4000)) DaysCovering,
	cast(JOBTITLE as nvarchar(4000)) JobTitle,
	CREATED Created,
	VENDORID VendorID,
	CONTACTID ContactID,
	MEDIAPOSITIONID MediaPositionID,
	UPDATEEVENTID UpdateEventID,
	SUBORDINATECONTACTID SubordinateContactID,
	MEDIAAUCTIONID MediaAuctionID,
	SPONSORAUCTIONID SponsorAuctionID
From Auct_SubordinateContact_Raw
    ');

  CREATE TABLE "stg"."Auct_SubordinateContact_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SubordinateContact_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SubordinateContact_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SubordinateContact_Inter__dbt_tmp_temp_view"
    end


