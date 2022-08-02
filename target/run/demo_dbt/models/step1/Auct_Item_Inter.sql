
  
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
	[ITEMID] [ItemID],
	[ESTIMATEDVALUE] [EstimatedValue],
	cast([DESCR] as nvarchar(4000)) [Descr],
	[ITEMTYPEID] [ItemTypeID],
	[ITEMSTATUSID] [ItemStatusID],
	[CONTACTID] [ContactID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[ITEMTAXTYPEID] [ItemTaxTypeID]
From stg.[Auct_Item_Raw]
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


