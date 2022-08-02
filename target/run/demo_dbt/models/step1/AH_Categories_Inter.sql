
  
  if object_id ('"stg"."AH_Categories_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Categories_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Categories_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Categories_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Categories_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[ParentCategoryId] [ParentCategoryID],
	[DisplayOrder] [DisplayOrder],
	[lft] [Lft],
	[rgt] [Rgt],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([RolesAllowed] as nvarchar(4000)) [RolesAllowed],
	cast([EnabledCustomProperty] as nvarchar(4000)) [EnabledCustomProperty],
	cast([MetaKeywords] as nvarchar(4000)) [MetaKeyWords],
	cast([MetaDescription] as nvarchar(4000)) [MetaDescription],
	cast([PageTitle] as nvarchar(4000)) [PageTitle],
	cast([PageContent] as nvarchar(4000)) [Pagecontent],
	cast([Name] as nvarchar(4000)) [Name],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Type] as nvarchar(4000)) [Type],
	cast([MVCAction] as nvarchar(4000)) [MvcAction]
From stg.[AH_Categories_Raw]
    ');

  CREATE TABLE "stg"."AH_Categories_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Categories_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Categories_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Categories_Inter__dbt_tmp_temp_view"
    end


