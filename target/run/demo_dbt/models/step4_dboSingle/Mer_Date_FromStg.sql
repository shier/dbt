
  
  if object_id ('"dbo"."Mer_Date_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Date_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_Date_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_Date_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_Date_FromStg__dbt_tmp_temp_view as
    
Select
	cast([DateID] as int) [DateID],
	cast([Date] as date) [Date] 
From stg.[Mer_Date_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_Date_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_Date_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_Date_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Date_FromStg__dbt_tmp_temp_view"
    end


