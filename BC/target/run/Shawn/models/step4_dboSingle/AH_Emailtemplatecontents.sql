
  
  if object_id ('"dbo"."AH_Emailtemplatecontents__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Emailtemplatecontents__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Emailtemplatecontents__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Emailtemplatecontents__dbt_tmp"
    end


   EXEC('create view dbo.AH_Emailtemplatecontents__dbt_tmp_temp_view as
    
Select
	cast([Name] as nvarchar(4000)) [Name],
	cast([Culture] as nvarchar(4000)) [Culture],
	cast([SuBJect] as nvarchar(4000)) [Subject],
	cast([Body] as nvarchar(4000)) [Body],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id] 
From stg.[AH_Emailtemplatecontents_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Emailtemplatecontents__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Emailtemplatecontents__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Emailtemplatecontents__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Emailtemplatecontents__dbt_tmp_temp_view"
    end


