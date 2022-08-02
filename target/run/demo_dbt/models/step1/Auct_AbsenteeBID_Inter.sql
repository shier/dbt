
  
  if object_id ('"stg"."Auct_AbsenteeBID_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AbsenteeBID_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AbsenteeBID_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AbsenteeBID_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AbsenteeBID_Inter__dbt_tmp_temp_view as
    
Select
	[ABSENTEEBIDID] [AbsenteeBidID],
	[LOTNUMBER] [LotNumber],
	[MAXBID] [MaxBID],
	[AUCTIONBIDDERID] [AuctionBidderID],
	[CONSIGNMENTID] [ConsignmentID],
	[AUCTIONID] [AuctionID],
	cast([CONTACTPHONE1] as nvarchar(4000)) [Contactphone1],
	cast([CONTACTPHONE2] as nvarchar(4000)) [Contactphone2],
	cast([NOTE] as nvarchar(4000)) [Note],
	[ABSENTEETYPEIDBIT] [AbsenteeTypeIDBit]
From stg.[Auct_AbsenteeBID_Raw]
    ');

  CREATE TABLE "stg"."Auct_AbsenteeBID_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AbsenteeBID_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AbsenteeBID_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AbsenteeBID_Inter__dbt_tmp_temp_view"
    end


