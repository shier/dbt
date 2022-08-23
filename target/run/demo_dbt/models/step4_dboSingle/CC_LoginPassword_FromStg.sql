
  
  if object_id ('"dbo"."CC_LoginPassword_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_LoginPassword_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_LoginPassword_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_LoginPassword_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_LoginPassword_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([IsActive] as bit) [IsActive],
	cast([Password] as nvarchar(4000)) [Password],
	cast([UserID] as int) [UserID],
	cast([AccessfailedCount] as int) [AccessfailedCount],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([LockOutEnd] as datetime) [LockOutEnd] 
From stg.[CC_LoginPassword_FinalView]
    ');

  CREATE TABLE "dbo"."CC_LoginPassword_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_LoginPassword_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_LoginPassword_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_LoginPassword_FromStg__dbt_tmp_temp_view"
    end


