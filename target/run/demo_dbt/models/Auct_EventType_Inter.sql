
  
  if object_id ('"stg"."Auct_EventType_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_EventType_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_EventType_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_EventType_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_EventType_Inter__dbt_tmp_temp_view as
    
Select
	EVENTTYPEID EventTypeID,
	CANHAVECHILDREN CanHaveChildren,
	cast(NAME as nvarchar(4000)) Name,
	cast(IMAGEURL as nvarchar(4000)) ImageURL,
	cast(CLASSNAME as nvarchar(4000)) ClassName,
	cast(DESCRIPTION as nvarchar(4000)) Description,
	cast(DEACTIVEIMAGEURL as nvarchar(4000)) DeActiveImageURL
From Auct_EventType_Raw
    ');

  CREATE TABLE "stg"."Auct_EventType_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_EventType_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_EventType_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_EventType_Inter__dbt_tmp_temp_view"
    end


