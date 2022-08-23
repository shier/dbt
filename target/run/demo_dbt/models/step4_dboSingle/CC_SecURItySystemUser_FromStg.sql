
  
  if object_id ('"dbo"."CC_SecURItySystemUser_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SecURItySystemUser_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_SecURItySystemUser_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_SecURItySystemUser_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_SecURItySystemUser_FromStg__dbt_tmp_temp_view as
    
Select
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([ChangePasswordonFirstLogon] as bit) [ChangePasswordonFirstLogon],
	cast([IsActive] as bit) [IsActive],
	cast([OID] as nvarchar(4000)) [OID],
	cast([StoredPassword] as nvarchar(4000)) [StoredPassword],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord],
	cast([OBJectType] as int) [OBJectType] 
From stg.[CC_SecURItySystemUser_FinalView]
    ');

  CREATE TABLE "dbo"."CC_SecURItySystemUser_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_SecURItySystemUser_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_SecURItySystemUser_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SecURItySystemUser_FromStg__dbt_tmp_temp_view"
    end


