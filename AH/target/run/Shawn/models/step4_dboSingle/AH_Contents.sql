
  
  if object_id ('"dbo"."AH_Contents__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Contents__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Contents__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Contents__dbt_tmp"
    end


   EXEC('create view dbo.AH_Contents__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([DisplayOrder] as int) [DisplayOrder],
	cast([Usehtmleditor] as bit) [Usehtmleditor],
	cast([Userdefined] as bit) [Userdefined],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Text] as nvarchar(4000)) [Text],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Culture] as nvarchar(4000)) [Culture],
	cast([PageTitle] as nvarchar(4000)) [PageTitle] 
From stg.[AH_Contents_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Contents__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Contents__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Contents__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Contents__dbt_tmp_temp_view"
    end


