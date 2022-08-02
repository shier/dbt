
  
  if object_id ('"stg"."Auct_AbsenteeBid_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AbsenteeBid_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AbsenteeBid_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AbsenteeBid_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AbsenteeBid_Inter__dbt_tmp_temp_view as
    
Select
	cast(CONTACTPHONE1 as nvarchar(4000)) Contactphone1,
	cast(CONTACTPHONE2 as nvarchar(4000)) Contactphone2,
	cast(NOTE as nvarchar(4000)) Note,
	ABSENTEEBIDID AbsenteeBidID,
	AUCTIONBIDDERID AuctionBidderID,
	CONSIGNMENTID ConsignmentID,
	AUCTIONID AuctionID,
	ABSENTEETYPEIDBIT AbsenteeTypeIDBit,
	MAXBID MaxBID,
	LOTNUMBER LotNumber
From Auct_AbsenteeBid_Raw
    ');

  CREATE TABLE "stg"."Auct_AbsenteeBid_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AbsenteeBid_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AbsenteeBid_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AbsenteeBid_Inter__dbt_tmp_temp_view"
    end


