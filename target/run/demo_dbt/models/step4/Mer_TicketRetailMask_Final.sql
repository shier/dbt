
  
  if object_id ('"stg"."Mer_TicketRetailMask_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TicketRetailMask_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_TicketRetailMask_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_TicketRetailMask_Final__dbt_tmp"
    end


   EXEC('create view stg.Mer_TicketRetailMask_Final__dbt_tmp_temp_view as
    
Select
	[ID],[Mask_Name],[Mask_Description],[Ticket_Source_ID] 
From stg.[Mer_TicketRetailMask_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Mer_TicketRetailMask_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_TicketRetailMask_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_TicketRetailMask_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TicketRetailMask_Final__dbt_tmp_temp_view"
    end


