
  
  if object_id ('"dbo"."Auct_UserPrivilege_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UserPrivilege_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_UserPrivilege_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_UserPrivilege_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_UserPrivilege_FromStg__dbt_tmp_temp_view as
    
Select
	cast([UsersPrivilegeID] as int) [UsersPrivilegeID],
	cast([UsersID] as int) [UsersID],
	cast([PrivilegeID] as int) [PrivilegeID],
	cast([Deny] as nvarchar(4000)) [Deny],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_UserPrivilege_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_UserPrivilege_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_UserPrivilege_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_UserPrivilege_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UserPrivilege_FromStg__dbt_tmp_temp_view"
    end


