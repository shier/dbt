
  
  if object_id ('"dbo"."CC_ModelDifference__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ModelDifference__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ModelDifference__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ModelDifference__dbt_tmp"
    end


   EXEC('create view dbo.CC_ModelDifference__dbt_tmp_temp_view as
    
Select
	cast([Version] as int) [Version],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GCRecord],
	cast([OID] as nvarchar(4000)) [Oid],
	cast([UserID] as nvarchar(4000)) [UserId],
	cast([ConTextID] as nvarchar(4000)) [ContextId] 
From stg.[CC_ModelDifference_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ModelDifference__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ModelDifference__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ModelDifference__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ModelDifference__dbt_tmp_temp_view"
    end


