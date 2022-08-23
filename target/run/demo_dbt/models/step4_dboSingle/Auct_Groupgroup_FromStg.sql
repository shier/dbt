
  
  if object_id ('"dbo"."Auct_Groupgroup_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Groupgroup_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Groupgroup_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Groupgroup_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Groupgroup_FromStg__dbt_tmp_temp_view as
    
Select
	cast([GroupgroupID] as int) [GroupgroupID],
	cast([ParentGroupID] as int) [ParentGroupID],
	cast([ChildGroupID] as int) [ChildGroupID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Groupgroup_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Groupgroup_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Groupgroup_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Groupgroup_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Groupgroup_FromStg__dbt_tmp_temp_view"
    end


