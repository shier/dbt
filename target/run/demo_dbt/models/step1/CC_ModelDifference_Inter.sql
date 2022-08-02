
  
  if object_id ('"stg"."CC_ModelDifference_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ModelDifference_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ModelDifference_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ModelDifference_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ModelDifference_Inter__dbt_tmp_temp_view as
    
Select
	[Version] [Version],
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord],
	cast([Oid] as nvarchar(4000)) [OID],
	cast([UserId] as nvarchar(4000)) [UserID],
	cast([ContextId] as nvarchar(4000)) [ConTextID]
From stg.[CC_ModelDifference_Raw]
    ');

  CREATE TABLE "stg"."CC_ModelDifference_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ModelDifference_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ModelDifference_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ModelDifference_Inter__dbt_tmp_temp_view"
    end


