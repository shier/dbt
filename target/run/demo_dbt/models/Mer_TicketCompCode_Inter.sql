
  
  if object_id ('"stg"."Mer_TicketCompCode_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TicketCompCode_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_TicketCompCode_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_TicketCompCode_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_TicketCompCode_Inter__dbt_tmp_temp_view as
    
Select
	COMP_CODE Comp_Code,
	cast(COMP_NAME as nvarchar(4000)) Comp_Name,
	cast(COMP_DESCRIPTION as nvarchar(4000)) Comp_Description
From Mer_TicketCompCode_Raw
    ');

  CREATE TABLE "stg"."Mer_TicketCompCode_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_TicketCompCode_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_TicketCompCode_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TicketCompCode_Inter__dbt_tmp_temp_view"
    end


