
  
  if object_id ('"stg"."AH_BannedUsers_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_BannedUsers_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_BannedUsers_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_BannedUsers_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_BannedUsers_Inter__dbt_tmp_temp_view as
    
Select
	IsLockedOut IsLockedOut,
	cast(LastIP as nvarchar(4000)) Lastip,
	cast(UserName as nvarchar(4000)) UserName,
	cast(FName as nvarchar(4000)) FName,
	cast(LName as nvarchar(4000)) LName,
	Id ID,
	UserId UserID
From AH_BannedUsers_Raw
    ');

  CREATE TABLE "stg"."AH_BannedUsers_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_BannedUsers_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_BannedUsers_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_BannedUsers_Inter__dbt_tmp_temp_view"
    end


