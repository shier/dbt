
  
  if object_id ('"stg"."Auct_UserPrivilege_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UserPrivilege_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_UserPrivilege_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_UserPrivilege_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_UserPrivilege_Inter__dbt_tmp_temp_view as
    
Select
	[CREATED] [Created],
	[USERSPRIVILEGEID] [UsersPrivilegeID],
	[USERSID] [UsersID],
	[PRIVILEGEID] [PrivilegeID],
	[UPDATEEVENTID] [UpdateEventID],
	cast([DENY] as nvarchar(4000)) [Deny]
From stg.[Auct_UserPrivilege_Raw]
    ');

  CREATE TABLE "stg"."Auct_UserPrivilege_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_UserPrivilege_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_UserPrivilege_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UserPrivilege_Inter__dbt_tmp_temp_view"
    end


