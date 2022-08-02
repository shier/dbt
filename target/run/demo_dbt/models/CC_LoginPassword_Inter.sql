
  
  if object_id ('"stg"."CC_LoginPassword_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_LoginPassword_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_LoginPassword_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_LoginPassword_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_LoginPassword_Inter__dbt_tmp_temp_view as
    
Select
	Id ID,
	UserId UserID,
	AccessFailedCount AccessfailedCount,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	LockoutEnd LockOutEnd,
	IsActive IsActive,
	cast(Password as nvarchar(4000)) Password
From CC_LoginPassword_Raw
    ');

  CREATE TABLE "stg"."CC_LoginPassword_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_LoginPassword_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_LoginPassword_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_LoginPassword_Inter__dbt_tmp_temp_view"
    end


