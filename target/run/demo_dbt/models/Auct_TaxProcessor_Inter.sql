
  
  if object_id ('"stg"."Auct_TaxProcessor_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TaxProcessor_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_TaxProcessor_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_TaxProcessor_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_TaxProcessor_Inter__dbt_tmp_temp_view as
    
Select
	ITEMTAXTYPEID ItemTaxTypeID,
	AUCTIONTYPEBIT AuctionTypeBit,
	cast(NEXUSSTATE as nvarchar(4000)) NexusState,
	cast(PURCHASESTATE as nvarchar(4000)) PurchaseState,
	cast(CLASSNAME as nvarchar(4000)) ClassName,
	cast(TAXRULEDESCRIPTION as nvarchar(4000)) TaxruleDescription
From Auct_TaxProcessor_Raw
    ');

  CREATE TABLE "stg"."Auct_TaxProcessor_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_TaxProcessor_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_TaxProcessor_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TaxProcessor_Inter__dbt_tmp_temp_view"
    end


