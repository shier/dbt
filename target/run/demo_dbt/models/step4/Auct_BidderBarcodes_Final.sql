
  
  if object_id ('"stg"."Auct_BidderBarcodes_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderBarcodes_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BidderBarcodes_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BidderBarcodes_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_BidderBarcodes_Final__dbt_tmp_temp_view as
    
Select
	[TicketID],[Barcode],[TransactionID],[EventName],[SectionName],[Seatrow],[Seatnum],[BidderID],[AuctionID],[Length] 
From stg.[Auct_BidderBarcodes_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_BidderBarcodes_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BidderBarcodes_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BidderBarcodes_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderBarcodes_Final__dbt_tmp_temp_view"
    end


