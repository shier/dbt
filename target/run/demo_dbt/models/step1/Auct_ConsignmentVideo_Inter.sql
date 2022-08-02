
  
  if object_id ('"stg"."Auct_ConsignmentVideo_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConsignmentVideo_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ConsignmentVideo_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ConsignmentVideo_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ConsignmentVideo_Inter__dbt_tmp_temp_view as
    
Select
	[VIDEOID] [VideoID],
	[CONSIGNMENTID] [ConsignmentID],
	cast([URI] as nvarchar(4000)) [URI],
	[DATECREATED] [DateCreated],
	cast([NAME] as nvarchar(4000)) [Name],
	[DISPLAYORDER] [DisplayOrder],
	cast([EMBEDURI] as nvarchar(4000)) [EmbedURI],
	cast([CODE] as nvarchar(4000)) [Code],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[ACTIVE] [Active]
From stg.[Auct_ConsignmentVideo_Raw]
    ');

  CREATE TABLE "stg"."Auct_ConsignmentVideo_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ConsignmentVideo_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ConsignmentVideo_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConsignmentVideo_Inter__dbt_tmp_temp_view"
    end


