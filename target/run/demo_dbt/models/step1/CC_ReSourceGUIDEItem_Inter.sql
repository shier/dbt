
  
  if object_id ('"stg"."CC_ReSourceGUIDEItem_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ReSourceGUIDEItem_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ReSourceGUIDEItem_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ReSourceGUIDEItem_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ReSourceGUIDEItem_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[StartDate] [StartDate],
	[EndDate] [EndDate],
	[ResourceGuideId] [ReSourceGUIDEID],
	[SequenceGroup] [SequenceGroup],
	[IsActive] [IsActive],
	cast([LogoUrl] as nvarchar(4000)) [LogoURL],
	cast([Title] as nvarchar(4000)) [Title],
	cast([PageContent] as nvarchar(4000)) [Pagecontent],
	cast([LinkText] as nvarchar(4000)) [LinkText],
	cast([LinkUrl] as nvarchar(4000)) [LinkURL],
	cast([CallToActionText] as nvarchar(4000)) [CalltoActionText],
	cast([CallToActionUrl] as nvarchar(4000)) [CalltoActionURL]
From stg.[CC_ReSourceGUIDEItem_Raw]
    ');

  CREATE TABLE "stg"."CC_ReSourceGUIDEItem_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ReSourceGUIDEItem_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ReSourceGUIDEItem_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ReSourceGUIDEItem_Inter__dbt_tmp_temp_view"
    end


