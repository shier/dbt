
  
  if object_id ('"stg"."AH_SysDiagrams_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SysDiagrams_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_SysDiagrams_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_SysDiagrams_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_SysDiagrams_Inter__dbt_tmp_temp_view as
    
Select
	[diagram_id] [Diagram_ID],
	[version] [Version],
	[principal_id] [Principal_ID],
	cast([definition] as nvarchar(4000)) [Definition],
	cast([name] as nvarchar(4000)) [Name]
From stg.[AH_SysDiagrams_Raw]
    ');

  CREATE TABLE "stg"."AH_SysDiagrams_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_SysDiagrams_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_SysDiagrams_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SysDiagrams_Inter__dbt_tmp_temp_view"
    end


