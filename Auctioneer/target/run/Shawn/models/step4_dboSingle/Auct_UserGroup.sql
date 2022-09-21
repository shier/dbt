
  
  if object_id ('"dbo"."Auct_UserGroup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UserGroup__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_UserGroup__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_UserGroup__dbt_tmp"
    end


   EXEC('create view dbo.Auct_UserGroup__dbt_tmp_temp_view as
    
Select
	cast([GroupID] as int) [GROUPID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([DistributionEmail] as nvarchar(4000)) [DISTRIBUTIONEMAIL],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([GroupOwner] as int) [GROUPOWNER] 
From stg.[Auct_UserGroup_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_UserGroup__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_UserGroup__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_UserGroup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UserGroup__dbt_tmp_temp_view"
    end


