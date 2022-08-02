
  
  if object_id ('"stg"."Auct_SaleStatus_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SaleStatus_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SaleStatus_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SaleStatus_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SaleStatus_Inter__dbt_tmp_temp_view as
    
Select
	UPDATEEVENTID UpdateEventID,
	SALESTATUSID SaleStatusID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name,
	cast(CLASSNAME as nvarchar(4000)) ClassName
From Auct_SaleStatus_Raw
    ');

  CREATE TABLE "stg"."Auct_SaleStatus_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SaleStatus_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SaleStatus_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SaleStatus_Inter__dbt_tmp_temp_view"
    end


