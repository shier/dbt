
  
  if object_id ('"dbo"."Mer_TicketCompCode_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TicketCompCode_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_TicketCompCode_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_TicketCompCode_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_TicketCompCode_FromStg__dbt_tmp_temp_view as
    
Select
	cast([Comp_Code] as int) [CompCode],
	cast([Comp_Name] as nvarchar(500)) [CompName],
	cast([Comp_Description] as nvarchar(4000)) [CompDescription] 
From stg.[Mer_TicketCompCode_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_TicketCompCode_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_TicketCompCode_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_TicketCompCode_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TicketCompCode_FromStg__dbt_tmp_temp_view"
    end


