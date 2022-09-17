
  
  if object_id ('"dbo"."CC_SecURItySystemUserusers_SecuritysystemRoleroles__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SecURItySystemUserusers_SecuritysystemRoleroles__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_SecURItySystemUserusers_SecuritysystemRoleroles__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_SecURItySystemUserusers_SecuritysystemRoleroles__dbt_tmp"
    end


   EXEC('create view dbo.CC_SecURItySystemUserusers_SecuritysystemRoleroles__dbt_tmp_temp_view as
    
Select
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([Roles] as nvarchar(4000)) [Roles],
	cast([Users] as nvarchar(4000)) [Users],
	cast([OID] as nvarchar(4000)) [OID] 
From stg.[CC_SecURItySystemUserusers_SecuritysystemRoleroles_FinalView]
    ');

  CREATE TABLE "dbo"."CC_SecURItySystemUserusers_SecuritysystemRoleroles__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_SecURItySystemUserusers_SecuritysystemRoleroles__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_SecURItySystemUserusers_SecuritysystemRoleroles__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SecURItySystemUserusers_SecuritysystemRoleroles__dbt_tmp_temp_view"
    end


