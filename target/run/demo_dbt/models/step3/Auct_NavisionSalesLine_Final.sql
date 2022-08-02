
  
  if object_id ('"stg"."Auct_NavisionSalesLine_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionSalesLine_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavisionSalesLine_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_NavisionSalesLine_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_NavisionSalesLine_Final__dbt_tmp_temp_view as
    
Select
	[DocumentType],[AuctionDocumentno],[Lineno],[Type],[No],[Description],[Description2],[Status],[StatusMessage],[GlobalDimension1Code],[GlobalDimension2Code],[ShortCutDimension4Code],[ShortCutDimension8Code],[ShortCutDimension3Code],[BusinessUnit],[WrotetoNavision],[ShortCutDimension5Code],[Quantity],[UnitPriceexclTax],[Unitcost] 
From [Auct_NavisionSalesLine_Incr]
    ');

  CREATE TABLE "stg"."Auct_NavisionSalesLine_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavisionSalesLine_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_NavisionSalesLine_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionSalesLine_Final__dbt_tmp_temp_view"
    end


