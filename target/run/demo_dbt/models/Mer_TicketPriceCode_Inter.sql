
  
  if object_id ('"stg"."Mer_TicketPriceCode_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TicketPriceCode_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_TicketPriceCode_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_TicketPriceCode_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_TicketPriceCode_Inter__dbt_tmp_temp_view as
    
Select
	TICKET_SOURCE_ID Ticket_Source_ID,
	cast(ID as nvarchar(4000)) ID,
	cast(CODE_NAME as nvarchar(4000)) Code_Name,
	cast(CODE_DESCRIPTION as nvarchar(4000)) Code_Description
From Mer_TicketPriceCode_Raw
    ');

  CREATE TABLE "stg"."Mer_TicketPriceCode_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_TicketPriceCode_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_TicketPriceCode_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TicketPriceCode_Inter__dbt_tmp_temp_view"
    end


