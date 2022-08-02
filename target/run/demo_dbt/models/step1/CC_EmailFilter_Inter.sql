
  
  if object_id ('"stg"."CC_EmailFilter_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_EmailFilter_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_EmailFilter_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_EmailFilter_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_EmailFilter_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[FilterCodeId] [FilterCodeID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[IsActive] [IsActive],
	cast([FilterType] as nvarchar(4000)) [FilterType],
	cast([FilterValue] as nvarchar(4000)) [FilterValue]
From stg.[CC_EmailFilter_Raw]
    ');

  CREATE TABLE "stg"."CC_EmailFilter_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_EmailFilter_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_EmailFilter_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_EmailFilter_Inter__dbt_tmp_temp_view"
    end


