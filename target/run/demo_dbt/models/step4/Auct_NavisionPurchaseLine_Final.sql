
  
  if object_id ('"stg"."Auct_NavisionPurchaseLine_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionPurchaseLine_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavisionPurchaseLine_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_NavisionPurchaseLine_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_NavisionPurchaseLine_Final__dbt_tmp_temp_view as
    
Select
	[AuctionDocumentno],[No],[Description],[Description2],[ShortCutdim3Code],[BusinessUnit],[StatusMessage],[Globaldim1Code],[Globaldim2Code],[ShortCutdim4Code],[ShortCutdim5Code],[ShortCutdim8Code],[DirectUnitcostexclTax],[Status],[WrotetoNavision],[DocumentType],[Lneno],[Type],[Quantity] 
From [Auct_NavisionPurchaseLine_Incr]
    ');

  CREATE TABLE "stg"."Auct_NavisionPurchaseLine_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavisionPurchaseLine_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_NavisionPurchaseLine_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionPurchaseLine_Final__dbt_tmp_temp_view"
    end


