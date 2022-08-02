
  
  if object_id ('"stg"."CC_ReSourceGUIDE_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ReSourceGUIDE_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ReSourceGUIDE_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ReSourceGUIDE_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ReSourceGUIDE_Inter__dbt_tmp_temp_view as
    
Select
	cast(ResourceIdPath as nvarchar(4000)) ReSourceIDPath,
	cast(Slug as nvarchar(4000)) Slug,
	cast(Title as nvarchar(4000)) Title,
	cast(PageContent as nvarchar(4000)) Pagecontent,
	cast(MetaDescription as nvarchar(4000)) MetaDescription,
	cast(FontAwesomeIcon as nvarchar(4000)) FontawesomeIcon,
	cast(Teaser as nvarchar(4000)) Teaser,
	Id ID,
	ParentResourceGuideId ParentreSourceGUIDEID,
	Depth Depth,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	IsActive IsActive
From CC_ReSourceGUIDE_Raw
    ');

  CREATE TABLE "stg"."CC_ReSourceGUIDE_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ReSourceGUIDE_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ReSourceGUIDE_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ReSourceGUIDE_Inter__dbt_tmp_temp_view"
    end


