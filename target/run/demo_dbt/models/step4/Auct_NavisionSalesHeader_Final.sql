
  
  if object_id ('"stg"."Auct_NavisionSalesHeader_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionSalesHeader_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavisionSalesHeader_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_NavisionSalesHeader_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_NavisionSalesHeader_Final__dbt_tmp_temp_view as
    
Select
	[ExternalDocumentno],[Lotno],[AuctionID],[GlobalDimension1Code],[GlobalDimension2Code],[BusinessUnit],[AuctionDocumentno],[SelltoCustomerno],[BilltoCustomerno],[YourReference],[StatusMessage],[Jobno],[ShipmentDate],[DueDate],[PaymentDate],[DocumentDate],[PostingDate],[DocumentType],[Status],[Imported],[WrotetoNavision] 
From [Auct_NavisionSalesHeader_Incr]
    ');

  CREATE TABLE "stg"."Auct_NavisionSalesHeader_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavisionSalesHeader_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_NavisionSalesHeader_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionSalesHeader_Final__dbt_tmp_temp_view"
    end


