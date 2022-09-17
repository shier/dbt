
  
  if object_id ('"dbo"."AH_Emailtemplates__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Emailtemplates__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Emailtemplates__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Emailtemplates__dbt_tmp"
    end


   EXEC('create view dbo.AH_Emailtemplates__dbt_tmp_temp_view as
    
Select
	cast([Enabled] as bit) [Enabled],
	cast([ID] as int) [ID],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[AH_Emailtemplates_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Emailtemplates__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Emailtemplates__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Emailtemplates__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Emailtemplates__dbt_tmp_temp_view"
    end


