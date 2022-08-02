
  
  if object_id ('"stg"."CC_MakeModelCorrection_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_MakeModelCorrection_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_MakeModelCorrection_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_MakeModelCorrection_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_MakeModelCorrection_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	cast([BadMake] as nvarchar(4000)) [BadMake],
	cast([BadModel] as nvarchar(4000)) [BadModel],
	cast([GoodMake] as nvarchar(4000)) [GoodMake],
	cast([GoodModel] as nvarchar(4000)) [GoodModel],
	cast([GoodTrim] as nvarchar(4000)) [GoodTrim],
	[IsActive] [IsActive]
From stg.[CC_MakeModelCorrection_Raw]
    ');

  CREATE TABLE "stg"."CC_MakeModelCorrection_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_MakeModelCorrection_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_MakeModelCorrection_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_MakeModelCorrection_Inter__dbt_tmp_temp_view"
    end


