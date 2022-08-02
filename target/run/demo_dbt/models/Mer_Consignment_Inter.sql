
  
  if object_id ('"stg"."Mer_Consignment_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Consignment_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Consignment_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_Consignment_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_Consignment_Inter__dbt_tmp_temp_view as
    
Select
	AUCTIONID AuctionID,
	CONSIGNMENTID ConsignmentID,
	REVIEWSTATEID ReviewStateID,
	REVIEWSTATEDATE ReviewStateDate,
	MODIFIEDDATETIME ModifiedDateTime,
	cast(REVIEWSTATENAME as nvarchar(4000)) ReviewStateName
From Mer_Consignment_Raw
    ');

  CREATE TABLE "stg"."Mer_Consignment_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Consignment_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_Consignment_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Consignment_Inter__dbt_tmp_temp_view"
    end


