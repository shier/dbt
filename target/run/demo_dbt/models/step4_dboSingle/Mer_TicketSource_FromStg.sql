
  
  if object_id ('"dbo"."Mer_TicketSource_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TicketSource_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_TicketSource_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_TicketSource_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_TicketSource_FromStg__dbt_tmp_temp_view as
    
Select
	cast([SourceID] as int) [TicketSourceID],
	cast([Source_Name] as varchar(500)) [SourceName],
	cast([Source_Description] as varchar(8000)) [SourceDescription] 
From stg.[Mer_TicketSource_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_TicketSource_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_TicketSource_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_TicketSource_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TicketSource_FromStg__dbt_tmp_temp_view"
    end


