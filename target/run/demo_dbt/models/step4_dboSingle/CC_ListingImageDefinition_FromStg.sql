
  
  if object_id ('"dbo"."CC_ListingImageDefinition_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingImageDefinition_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ListingImageDefinition_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ListingImageDefinition_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_ListingImageDefinition_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ListingImageDefinitionPK] as int) [ListingImageDefinitionPK],
	cast([ShouldpopulateInitially] as bit) [ShouldpopulateInitially],
	cast([ImageWidth] as int) [ImageWidth],
	cast([ImageHeight] as int) [ImageHeight],
	cast([Quality] as int) [Quality],
	cast([ListingImageFieldName] as nvarchar(4000)) [ListingImageFieldName],
	cast([FileNamefragment] as nvarchar(4000)) [FileNamefragment] 
From stg.[CC_ListingImageDefinition_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ListingImageDefinition_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ListingImageDefinition_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ListingImageDefinition_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingImageDefinition_FromStg__dbt_tmp_temp_view"
    end


