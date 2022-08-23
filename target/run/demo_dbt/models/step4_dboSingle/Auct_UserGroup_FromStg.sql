
  
  if object_id ('"dbo"."Auct_UserGroup_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UserGroup_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_UserGroup_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_UserGroup_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_UserGroup_FromStg__dbt_tmp_temp_view as
    
Select
	cast([GroupID] as int) [GroupID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DistributionEmail] as nvarchar(4000)) [DistributionEmail],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([GroupOwner] as int) [GroupOwner] 
From stg.[Auct_UserGroup_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_UserGroup_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_UserGroup_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_UserGroup_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UserGroup_FromStg__dbt_tmp_temp_view"
    end


