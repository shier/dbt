
  
  if object_id ('"dbo"."AH_Categories_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Categories_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Categories_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Categories_DM__dbt_tmp"
    end


   EXEC('create view dbo.AH_Categories_DM__dbt_tmp_temp_view as
    
SELECT
	Id,
	Name,
	ParentCategoryId,
	DisplayOrder,
	LastUpdatedUser,
	Type,
	MVCAction,
	RolesAllowed,
	EnabledCustomProperty,
	lft,
	rgt,
	CreatedOn,
	UpdatedOn,
	DeletedOn
FROM stg.AH_Categories_FinalView;
    ');

  CREATE TABLE "dbo"."AH_Categories_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Categories_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Categories_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Categories_DM__dbt_tmp_temp_view"
    end


