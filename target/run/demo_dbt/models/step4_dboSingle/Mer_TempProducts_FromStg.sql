
  
  if object_id ('"dbo"."Mer_TempProducts_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TempProducts_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_TempProducts_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_TempProducts_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_TempProducts_FromStg__dbt_tmp_temp_view as
    
Select
	cast([UnitPrice] as numeric(194)) [UnitPrice],
	cast([No_] as nvarchar(4000)) [No_],
	cast([No_2] as nvarchar(4000)) [No_2],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Description2] as nvarchar(4000)) [Description2],
	cast([BaseUnitofMeasure] as nvarchar(4000)) [BaseUnitofMeasure],
	cast([ItemCategoryCode] as nvarchar(4000)) [ItemCategoryCode] 
From stg.[Mer_TempProducts_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_TempProducts_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_TempProducts_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_TempProducts_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TempProducts_FromStg__dbt_tmp_temp_view"
    end


