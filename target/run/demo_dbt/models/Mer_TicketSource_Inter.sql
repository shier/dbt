
  
  if object_id ('"stg"."Mer_TicketSource_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TicketSource_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_TicketSource_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_TicketSource_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_TicketSource_Inter__dbt_tmp_temp_view as
    
Select
	cast(SOURCE_NAME as nvarchar(4000)) Source_Name,
	cast(SOURCE_DESCRIPTION as nvarchar(4000)) Source_Description,
	SOURCEID SourceID
From Mer_TicketSource_Raw
    ');

  CREATE TABLE "stg"."Mer_TicketSource_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_TicketSource_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_TicketSource_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TicketSource_Inter__dbt_tmp_temp_view"
    end


