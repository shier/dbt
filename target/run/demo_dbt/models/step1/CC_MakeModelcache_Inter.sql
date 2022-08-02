
  
  if object_id ('"stg"."CC_MakeModelcache_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_MakeModelcache_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_MakeModelcache_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_MakeModelcache_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_MakeModelcache_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[IsActive] [IsActive],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	[Year] [Year],
	[VehicleCount] [VehicleCount],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate]
From stg.[CC_MakeModelcache_Raw]
    ');

  CREATE TABLE "stg"."CC_MakeModelcache_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_MakeModelcache_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_MakeModelcache_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_MakeModelcache_Inter__dbt_tmp_temp_view"
    end


