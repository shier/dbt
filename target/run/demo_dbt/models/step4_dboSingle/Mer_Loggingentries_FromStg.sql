
  
  if object_id ('"dbo"."Mer_Loggingentries_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Loggingentries_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_Loggingentries_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_Loggingentries_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_Loggingentries_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([Merchant_ID] as nvarchar(4000)) [Merchant_ID],
	cast([LogType] as nvarchar(4000)) [LogType],
	cast([Entry] as nvarchar(4000)) [Entry],
	cast([Add_Date] as datetime) [Add_Date] 
From stg.[Mer_Loggingentries_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_Loggingentries_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_Loggingentries_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_Loggingentries_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Loggingentries_FromStg__dbt_tmp_temp_view"
    end


