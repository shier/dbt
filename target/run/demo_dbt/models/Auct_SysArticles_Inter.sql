
  
  if object_id ('"stg"."Auct_SysArticles_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysArticles_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysArticles_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SysArticles_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SysArticles_Inter__dbt_tmp_temp_view as
    
Select
	fire_triggers_on_snapshot Fire_Triggers_On_Snapshot,
	cast(description as nvarchar(4000)) Description,
	cast(dest_table as nvarchar(4000)) Dest_Table,
	cast(filter_clause as nvarchar(4000)) Filter_Clause,
	cast(ins_cmd as nvarchar(4000)) Ins_Cmd,
	cast(name as nvarchar(4000)) Name,
	cast(upd_cmd as nvarchar(4000)) Upd_Cmd,
	cast(creation_script as nvarchar(4000)) Creation_Script,
	cast(del_cmd as nvarchar(4000)) Del_Cmd,
	cast(dest_owner as nvarchar(4000)) Dest_Owner,
	cast(custom_script as nvarchar(4000)) Custom_Script,
	cast(schema_option as nvarchar(4000)) SchEMA_Option,
	status Status,
	sync_objid Sync_OBJID,
	type Type,
	ins_scripting_proc Ins_Scripting_Proc,
	del_scripting_proc Del_Scripting_Proc,
	upd_scripting_proc Upd_Scripting_Proc,
	artid ArtID,
	filter Filter,
	objid OBJID,
	pubid PubID,
	pre_creation_cmd Pre_Creation_cmd
From Auct_SysArticles_Raw
    ');

  CREATE TABLE "stg"."Auct_SysArticles_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysArticles_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SysArticles_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysArticles_Inter__dbt_tmp_temp_view"
    end


