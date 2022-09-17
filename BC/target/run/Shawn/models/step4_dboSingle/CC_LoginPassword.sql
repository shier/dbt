
  
  if object_id ('"dbo"."CC_LoginPassword__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_LoginPassword__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_LoginPassword__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_LoginPassword__dbt_tmp"
    end


   EXEC('create view dbo.CC_LoginPassword__dbt_tmp_temp_view as
    
Select
	cast([IsActive] as bit) [IsActive],
	cast([Password] as nvarchar(4000)) [Password],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([AccessfailedCount] as int) [AccessFailedCount],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([LockOutEnd] as datetime) [LockoutEnd] 
From stg.[CC_LoginPassword_FinalView]
    ');

  CREATE TABLE "dbo"."CC_LoginPassword__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_LoginPassword__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_LoginPassword__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_LoginPassword__dbt_tmp_temp_view"
    end


