
  
  if object_id ('"stg"."CC_SocialprovIDEr_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SocialprovIDEr_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SocialprovIDEr_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_SocialprovIDEr_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_SocialprovIDEr_Inter__dbt_tmp_temp_view as
    
Select
	cast(Name as nvarchar(4000)) Name,
	cast(DisplayName as nvarchar(4000)) DisplayName,
	cast(AppKey as nvarchar(4000)) AppKey,
	cast(AppSecret as nvarchar(4000)) AppSecret,
	IsActive IsActive,
	Id ID,
	CreateDate CreateDate,
	ModifyDate ModifyDate
From CC_SocialprovIDEr_Raw
    ');

  CREATE TABLE "stg"."CC_SocialprovIDEr_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SocialprovIDEr_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_SocialprovIDEr_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SocialprovIDEr_Inter__dbt_tmp_temp_view"
    end


