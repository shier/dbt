
  
  if object_id ('"dbo"."Mer_TicketPriceCode_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TicketPriceCode_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_TicketPriceCode_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_TicketPriceCode_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_TicketPriceCode_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as uniqueidentifier) [ID],
	cast([Ticket_Source_ID] as int) [TicketSourceID],
	cast([Code_Name] as varchar(500)) [CodeName],
	cast([Code_Description] as varchar(8000)) [PriceCodeDescription] 
From stg.[Mer_TicketPriceCode_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_TicketPriceCode_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_TicketPriceCode_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_TicketPriceCode_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TicketPriceCode_FromStg__dbt_tmp_temp_view"
    end


