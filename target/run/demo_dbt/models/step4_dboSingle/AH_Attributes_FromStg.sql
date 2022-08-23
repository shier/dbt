
  
  if object_id ('"dbo"."AH_Attributes_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Attributes_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Attributes_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Attributes_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_Attributes_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([ConText] as nvarchar(4000)) [ConText],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Value] as nvarchar(4000)) [Value],
	cast([EditMode] as nvarchar(4000)) [EditMode],
	cast([Type] as nvarchar(4000)) [Type],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_Attributes_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Attributes_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Attributes_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Attributes_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Attributes_FromStg__dbt_tmp_temp_view"
    end


