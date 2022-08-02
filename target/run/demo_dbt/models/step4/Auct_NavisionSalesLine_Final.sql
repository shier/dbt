
  
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
	[DocumentType],[Lineno],[Type],[Status],[WrotetoNavision],[Unitcost],[Quantity],[UnitPriceexclTax],[AuctionDocumentno],[No],[Description],[Description2],[StatusMessage],[GlobalDimension1Code],[GlobalDimension2Code],[ShortCutDimension4Code],[ShortCutDimension8Code],[ShortCutDimension3Code],[BusinessUnit],[ShortCutDimension5Code] 
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


