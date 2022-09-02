
  
  if object_id ('"dbo"."AH_ListingTypeMedia__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingTypeMedia__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ListingTypeMedia__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ListingTypeMedia__dbt_tmp"
    end


   EXEC('create view dbo.AH_ListingTypeMedia__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([Enabled] as bit) [Enabled],
	cast([ListingTypeID] as int) [ListingTypeID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([MediaassetName] as nvarchar(4000)) [MediaassetName],
	cast([Scope] as nvarchar(4000)) [Scope] 
From stg.[AH_ListingTypeMedia_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ListingTypeMedia__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ListingTypeMedia__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ListingTypeMedia__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingTypeMedia__dbt_tmp_temp_view"
    end


