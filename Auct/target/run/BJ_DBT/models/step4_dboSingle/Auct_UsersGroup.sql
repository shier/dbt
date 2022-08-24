
  
  if object_id ('"dbo"."Auct_UsersGroup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UsersGroup__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_UsersGroup__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_UsersGroup__dbt_tmp"
    end


   EXEC('create view dbo.Auct_UsersGroup__dbt_tmp_temp_view as
    
Select
	cast([UsersGroupID] as int) [UsersGroupID],
	cast([UsersID] as int) [UsersID],
	cast([GroupID] as int) [GroupID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_UsersGroup_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_UsersGroup__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_UsersGroup__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_UsersGroup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UsersGroup__dbt_tmp_temp_view"
    end


