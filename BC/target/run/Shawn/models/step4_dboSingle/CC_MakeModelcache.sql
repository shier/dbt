
  
  if object_id ('"dbo"."CC_MakeModelcache__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_MakeModelcache__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_MakeModelcache__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_MakeModelcache__dbt_tmp"
    end


   EXEC('create view dbo.CC_MakeModelcache__dbt_tmp_temp_view as
    
Select
	cast([IsActive] as bit) [IsActive],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([ID] as int) [Id],
	cast([Year] as int) [Year],
	cast([VehicleCount] as int) [VehicleCount],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate] 
From stg.[CC_MakeModelcache_FinalView]
    ');

  CREATE TABLE "dbo"."CC_MakeModelcache__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_MakeModelcache__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_MakeModelcache__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_MakeModelcache__dbt_tmp_temp_view"
    end


