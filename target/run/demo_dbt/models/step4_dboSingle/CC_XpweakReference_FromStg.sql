
  
  if object_id ('"dbo"."CC_XpweakReference_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_XpweakReference_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_XpweakReference_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_XpweakReference_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_XpweakReference_FromStg__dbt_tmp_temp_view as
    
Select
	cast([OID] as nvarchar(4000)) [OID],
	cast([TargetKey] as nvarchar(4000)) [TargetKey],
	cast([TargetType] as int) [TargetType],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord],
	cast([OBJectType] as int) [OBJectType] 
From stg.[CC_XpweakReference_FinalView]
    ');

  CREATE TABLE "dbo"."CC_XpweakReference_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_XpweakReference_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_XpweakReference_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_XpweakReference_FromStg__dbt_tmp_temp_view"
    end


