
  
  if object_id ('"stg"."CC_MakeModelcorrection_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_MakeModelcorrection_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_MakeModelcorrection_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_MakeModelcorrection_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_MakeModelcorrection_Inter__dbt_tmp_temp_view as
    
Select
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Id ID,
	IsActive IsActive,
	cast(BadMake as nvarchar(4000)) BadMake,
	cast(BadModel as nvarchar(4000)) BadModel,
	cast(GoodMake as nvarchar(4000)) GoodMake,
	cast(GoodModel as nvarchar(4000)) GoodModel,
	cast(GoodTrim as nvarchar(4000)) GoodTrim
From CC_MakeModelcorrection_Raw
    ');

  CREATE TABLE "stg"."CC_MakeModelcorrection_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_MakeModelcorrection_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_MakeModelcorrection_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_MakeModelcorrection_Inter__dbt_tmp_temp_view"
    end


