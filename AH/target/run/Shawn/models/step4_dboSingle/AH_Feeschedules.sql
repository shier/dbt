
  
  if object_id ('"dbo"."AH_Feeschedules__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Feeschedules__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Feeschedules__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Feeschedules__dbt_tmp"
    end


   EXEC('create view dbo.AH_Feeschedules__dbt_tmp_temp_view as
    
Select
	cast([PayToproceed] as bit) [PayToProceed],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([EventID] as int) [EventId],
	cast([ListingTypeID] as int) [ListingTypeId],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[AH_Feeschedules_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Feeschedules__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Feeschedules__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Feeschedules__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Feeschedules__dbt_tmp_temp_view"
    end


