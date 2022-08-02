
  
  if object_id ('"stg"."Auct_BlockBidSignature_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BlockBidSignature_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BlockBidSignature_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BlockBidSignature_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BlockBidSignature_Inter__dbt_tmp_temp_view as
    
Select
	BLOCKBIDSIGNATUREID BlockBidSignatureID,
	AUCTIONID AuctionID,
	AUCTIONBIDDERNUMBER AuctionBidderNumber,
	BLOCKBIDID BlockBidID,
	cast(SIGNATUREPATH as nvarchar(4000)) SignaturePath
From Auct_BlockBidSignature_Raw
    ');

  CREATE TABLE "stg"."Auct_BlockBidSignature_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BlockBidSignature_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BlockBidSignature_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BlockBidSignature_Inter__dbt_tmp_temp_view"
    end


