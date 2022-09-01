
  
  if object_id ('"dbo"."Auct_Forms__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Forms__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Forms__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Forms__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Forms__dbt_tmp_temp_view as
    
Select
	cast([FormID] as int) [FormID],
	cast([Active] as bit) [Active],
	cast([FileName] as nvarchar(4000)) [FileName],
	cast([DepartmentID] as int) [DepartmentID],
	cast([DisplayName] as nvarchar(4000)) [DisplayName],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[Auct_Forms_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Forms__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Forms__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Forms__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Forms__dbt_tmp_temp_view"
    end


