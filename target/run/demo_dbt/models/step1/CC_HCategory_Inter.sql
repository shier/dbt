
  
  if object_id ('"stg"."CC_HCategory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_HCategory_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_HCategory_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_HCategory_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_HCategory_Inter__dbt_tmp_temp_view as
    
Select
	cast([Oid] as nvarchar(4000)) [OID],
	cast([Parent] as nvarchar(4000)) [Parent],
	cast([Name] as nvarchar(4000)) [Name],
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord]
From stg.[CC_HCategory_Raw]
    ');

  CREATE TABLE "stg"."CC_HCategory_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_HCategory_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_HCategory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_HCategory_Inter__dbt_tmp_temp_view"
    end


