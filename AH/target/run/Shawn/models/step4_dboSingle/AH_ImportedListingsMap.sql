
  
  if object_id ('"dbo"."AH_ImportedListingsMap__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ImportedListingsMap__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ImportedListingsMap__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ImportedListingsMap__dbt_tmp"
    end


   EXEC('create view dbo.AH_ImportedListingsMap__dbt_tmp_temp_view as
    
Select
	cast([ForeignListingID] as int) [ForeignListingID],
	cast([LoCallistingID] as int) [LoCallistingID] 
From stg.[AH_ImportedListingsMap_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ImportedListingsMap__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ImportedListingsMap__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ImportedListingsMap__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ImportedListingsMap__dbt_tmp_temp_view"
    end


