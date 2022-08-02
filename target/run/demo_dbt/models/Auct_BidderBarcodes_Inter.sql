
  
  if object_id ('"stg"."Auct_BidderBarcodes_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderBarcodes_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BidderBarcodes_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BidderBarcodes_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BidderBarcodes_Inter__dbt_tmp_temp_view as
    
Select
	TicketID TicketID,
	cast(Barcode as nvarchar(4000)) Barcode,
	cast(TransactionID as nvarchar(4000)) TransactionID,
	cast(EventName as nvarchar(4000)) EventName,
	cast(SectionName as nvarchar(4000)) SectionName,
	cast(SeatRow as nvarchar(4000)) Seatrow,
	cast(SeatNum as nvarchar(4000)) Seatnum,
	BidderID BidderID,
	AuctionID AuctionID,
	Length Length
From Auct_BidderBarcodes_Raw
    ');

  CREATE TABLE "stg"."Auct_BidderBarcodes_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BidderBarcodes_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BidderBarcodes_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderBarcodes_Inter__dbt_tmp_temp_view"
    end


