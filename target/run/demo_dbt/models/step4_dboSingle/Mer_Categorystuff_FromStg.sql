
  
  if object_id ('"dbo"."Mer_Categorystuff_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Categorystuff_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_Categorystuff_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_Categorystuff_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_Categorystuff_FromStg__dbt_tmp_temp_view as
    
Select
	cast([Column1] as nvarchar(4000)) [Column1],
	cast([Column2] as nvarchar(4000)) [Column2] 
From stg.[Mer_Categorystuff_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_Categorystuff_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_Categorystuff_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_Categorystuff_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Categorystuff_FromStg__dbt_tmp_temp_view"
    end


