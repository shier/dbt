
  
  if object_id ('"dbo"."CC_HCategory__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_HCategory__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_HCategory__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_HCategory__dbt_tmp"
    end


   EXEC('create view dbo.CC_HCategory__dbt_tmp_temp_view as
    
Select
	cast([OID] as nvarchar(4000)) [Oid],
	cast([Parent] as nvarchar(4000)) [Parent],
	cast([Name] as nvarchar(4000)) [Name],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GCRecord] 
From stg.[CC_HCategory_FinalView]
    ');

  CREATE TABLE "dbo"."CC_HCategory__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_HCategory__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_HCategory__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_HCategory__dbt_tmp_temp_view"
    end


