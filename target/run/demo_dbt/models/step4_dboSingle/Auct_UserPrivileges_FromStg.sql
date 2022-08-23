
  
  if object_id ('"dbo"."Auct_UserPrivileges_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UserPrivileges_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_UserPrivileges_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_UserPrivileges_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_UserPrivileges_FromStg__dbt_tmp_temp_view as
    
Select
	cast([UsersID] as int) [UsersID],
	cast([PrivilegeID] as int) [PrivilegeID] 
From stg.[Auct_UserPrivileges_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_UserPrivileges_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_UserPrivileges_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_UserPrivileges_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UserPrivileges_FromStg__dbt_tmp_temp_view"
    end


