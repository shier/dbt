
  
  if object_id ('"dbo"."CC_AuditeDOBJectweakReference__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_AuditeDOBJectweakReference__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_AuditeDOBJectweakReference__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_AuditeDOBJectweakReference__dbt_tmp"
    end


   EXEC('create view dbo.CC_AuditeDOBJectweakReference__dbt_tmp_temp_view as
    
Select
	cast([OID] as nvarchar(4000)) [Oid],
	cast([GUIDID] as nvarchar(4000)) [GuidId],
	cast([DisplayName] as nvarchar(4000)) [DisplayName],
	cast([IntID] as int) [IntId] 
From stg.[CC_AuditeDOBJectweakReference_FinalView]
    ');

  CREATE TABLE "dbo"."CC_AuditeDOBJectweakReference__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_AuditeDOBJectweakReference__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_AuditeDOBJectweakReference__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_AuditeDOBJectweakReference__dbt_tmp_temp_view"
    end


