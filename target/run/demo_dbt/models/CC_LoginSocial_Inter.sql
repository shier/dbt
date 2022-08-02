
  
  if object_id ('"stg"."CC_LoginSocial_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_LoginSocial_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_LoginSocial_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_LoginSocial_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_LoginSocial_Inter__dbt_tmp_temp_view as
    
Select
	cast(SocialProviderKey as nvarchar(4000)) SocialprovIDErKey,
	IsActive IsActive,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	UserId UserID,
	SocialProviderId SocialprovIDErID,
	Id ID
From CC_LoginSocial_Raw
    ');

  CREATE TABLE "stg"."CC_LoginSocial_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_LoginSocial_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_LoginSocial_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_LoginSocial_Inter__dbt_tmp_temp_view"
    end


