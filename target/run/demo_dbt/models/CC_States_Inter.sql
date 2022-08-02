
  
  if object_id ('"stg"."CC_States_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_States_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_States_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_States_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_States_Inter__dbt_tmp_temp_view as
    
Select
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Id ID,
	CountryId CountryID,
	IsActive IsActive,
	cast(StateCode as nvarchar(4000)) StateCode,
	cast(Name as nvarchar(4000)) Name,
	cast(CountryCode as nvarchar(4000)) CountryCode,
	cast(StateNameSlug as nvarchar(4000)) StateNameslug
From CC_States_Raw
    ');

  CREATE TABLE "stg"."CC_States_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_States_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_States_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_States_Inter__dbt_tmp_temp_view"
    end


