
  
  if object_id ('"dbo"."Mer_TicketRetailMask_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TicketRetailMask_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_TicketRetailMask_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_TicketRetailMask_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_TicketRetailMask_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as uniqueidentifier) [ID],
	cast([Mask_Name] as varchar(500)) [RetailMaskName],
	cast([Mask_Description] as varchar(8000)) [MaskDescription],
	cast([Ticket_Source_ID] as int) [TicketSourceID] 
From stg.[Mer_TicketRetailMask_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_TicketRetailMask_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_TicketRetailMask_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_TicketRetailMask_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TicketRetailMask_FromStg__dbt_tmp_temp_view"
    end


