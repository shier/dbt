
  
  if object_id ('"stg"."Auct_SysschEMAArticles_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysschEMAArticles_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysschEMAArticles_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SysschEMAArticles_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SysschEMAArticles_Inter__dbt_tmp_temp_view as
    
Select
	cast(description as nvarchar(4000)) Description,
	cast(dest_object as nvarchar(4000)) Dest_OBJect,
	cast(name as nvarchar(4000)) Name,
	cast(dest_owner as nvarchar(4000)) Dest_Owner,
	cast(creation_script as nvarchar(4000)) Creation_Script,
	status Status,
	type Type,
	artid ArtID,
	objid OBJID,
	pubid PubID,
	pre_creation_cmd Pre_Creation_cmd,
	cast(schema_option as nvarchar(4000)) SchEMA_Option
From Auct_SysschEMAArticles_Raw
    ');

  CREATE TABLE "stg"."Auct_SysschEMAArticles_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysschEMAArticles_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SysschEMAArticles_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysschEMAArticles_Inter__dbt_tmp_temp_view"
    end


