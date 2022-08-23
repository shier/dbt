
  
  if object_id ('"stg"."CC_SysDiagrams_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SysDiagrams_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SysDiagrams_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_SysDiagrams_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_SysDiagrams_Inter__dbt_tmp_temp_view as
    
Select
	cast(name as nvarchar(4000)) Name,
	cast(definition as nvarchar(4000)) Definition,
	principal_id Principal_ID,
	diagram_id Diagram_ID,
	version Version
From CC_SysDiagrams_Raw
    ');

  CREATE TABLE "stg"."CC_SysDiagrams_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SysDiagrams_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_SysDiagrams_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SysDiagrams_Inter__dbt_tmp_temp_view"
    end

