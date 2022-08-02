
  
  if object_id ('"stg"."Auct_Item_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Item_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Item_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Item_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Item_Inter__dbt_tmp_temp_view as
    
Select
	ITEMTYPEID ItemTypeID,
	ITEMSTATUSID ItemStatusID,
	CONTACTID ContactID,
	UPDATEEVENTID UpdateEventID,
	ITEMTAXTYPEID ItemTaxTypeID,
	ITEMID ItemID,
	CREATED Created,
	ESTIMATEDVALUE EstimatedValue,
	cast(DESCR as nvarchar(4000)) Descr
From Auct_Item_Raw
    ');

  CREATE TABLE "stg"."Auct_Item_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Item_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Item_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Item_Inter__dbt_tmp_temp_view"
    end


