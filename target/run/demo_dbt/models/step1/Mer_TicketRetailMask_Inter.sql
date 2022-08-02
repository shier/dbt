
  
  if object_id ('"stg"."Mer_TicketRetailMask_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TicketRetailMask_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_TicketRetailMask_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_TicketRetailMask_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_TicketRetailMask_Inter__dbt_tmp_temp_view as
    
Select
	cast([ID] as nvarchar(4000)) [ID],
	cast([MASK_NAME] as nvarchar(4000)) [Mask_Name],
	cast([MASK_DESCRIPTION] as nvarchar(4000)) [Mask_Description],
	[TICKET_SOURCE_ID] [Ticket_Source_ID]
From stg.[Mer_TicketRetailMask_Raw]
    ');

  CREATE TABLE "stg"."Mer_TicketRetailMask_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_TicketRetailMask_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_TicketRetailMask_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TicketRetailMask_Inter__dbt_tmp_temp_view"
    end


