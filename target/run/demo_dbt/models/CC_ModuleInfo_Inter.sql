
  
  if object_id ('"stg"."CC_ModuleInfo_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ModuleInfo_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ModuleInfo_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ModuleInfo_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ModuleInfo_Inter__dbt_tmp_temp_view as
    
Select
	IsMain IsMain,
	ID ID,
	OptimisticLockField OptimisticLockField,
	cast(Name as nvarchar(4000)) Name,
	cast(AssemblyFileName as nvarchar(4000)) AssemblyFileName,
	cast(Version as nvarchar(4000)) Version
From CC_ModuleInfo_Raw
    ');

  CREATE TABLE "stg"."CC_ModuleInfo_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ModuleInfo_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ModuleInfo_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ModuleInfo_Inter__dbt_tmp_temp_view"
    end


