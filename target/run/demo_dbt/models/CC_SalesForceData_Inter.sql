
  
  if object_id ('"stg"."CC_SalesForceData_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SalesForceData_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SalesForceData_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_SalesForceData_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_SalesForceData_Inter__dbt_tmp_temp_view as
    
Select
	cast(Lookup as nvarchar(4000)) Lookup,
	cast(JsonData as nvarchar(4000)) JsonData,
	Id ID,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	IsActive IsActive
From CC_SalesForceData_Raw
    ');

  CREATE TABLE "stg"."CC_SalesForceData_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SalesForceData_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_SalesForceData_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SalesForceData_Inter__dbt_tmp_temp_view"
    end


