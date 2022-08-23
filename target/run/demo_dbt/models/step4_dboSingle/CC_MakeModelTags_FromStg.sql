
  
  if object_id ('"dbo"."CC_MakeModelTags_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_MakeModelTags_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_MakeModelTags_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_MakeModelTags_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_MakeModelTags_FromStg__dbt_tmp_temp_view as
    
Select
	cast([MakeModelFK] as int) [MakeModelFK],
	cast([TagFK] as int) [TagFK] 
From stg.[CC_MakeModelTags_FinalView]
    ');

  CREATE TABLE "dbo"."CC_MakeModelTags_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_MakeModelTags_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_MakeModelTags_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_MakeModelTags_FromStg__dbt_tmp_temp_view"
    end


