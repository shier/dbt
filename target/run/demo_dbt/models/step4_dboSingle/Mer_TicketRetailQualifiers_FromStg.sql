
  
  if object_id ('"dbo"."Mer_TicketRetailQualifiers_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TicketRetailQualifiers_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_TicketRetailQualifiers_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_TicketRetailQualifiers_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_TicketRetailQualifiers_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as uniqueidentifier) [ID],
	cast([Ticket_Source_ID] as int) [TicketSourceID],
	cast([Qualifiers_Name] as varchar(500)) [RetailQualifierName],
	cast([Qualifiers_Description] as varchar(8000)) [QualifiersDescription] 
From stg.[Mer_TicketRetailQualifiers_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_TicketRetailQualifiers_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_TicketRetailQualifiers_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_TicketRetailQualifiers_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TicketRetailQualifiers_FromStg__dbt_tmp_temp_view"
    end


