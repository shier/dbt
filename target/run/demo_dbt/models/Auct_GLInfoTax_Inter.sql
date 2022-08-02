
  
  if object_id ('"stg"."Auct_GLInfoTax_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_GLInfoTax_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_GLInfoTax_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_GLInfoTax_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_GLInfoTax_Inter__dbt_tmp_temp_view as
    
Select
	cast(AUCTIONBUSINESSUNIT as nvarchar(4000)) AuctionBusinessUnit,
	cast(GLINFONAME as nvarchar(4000)) GLInfoName,
	TAXTYPEID TaxTypeID,
	GLINFOTAXID GLInfoTaxID
From Auct_GLInfoTax_Raw
    ');

  CREATE TABLE "stg"."Auct_GLInfoTax_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_GLInfoTax_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_GLInfoTax_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_GLInfoTax_Inter__dbt_tmp_temp_view"
    end


