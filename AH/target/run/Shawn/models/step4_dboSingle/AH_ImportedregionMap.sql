
  
  if object_id ('"dbo"."AH_ImportedregionMap__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ImportedregionMap__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ImportedregionMap__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ImportedregionMap__dbt_tmp"
    end


   EXEC('create view dbo.AH_ImportedregionMap__dbt_tmp_temp_view as
    
Select
	cast([LocalregionID] as int) [LocalregionID],
	cast([ForeignregionID] as int) [ForeignregionID],
	cast([Foreignregiontier] as int) [Foreignregiontier] 
From stg.[AH_ImportedregionMap_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ImportedregionMap__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ImportedregionMap__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ImportedregionMap__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ImportedregionMap__dbt_tmp_temp_view"
    end


