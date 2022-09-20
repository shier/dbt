
  
  if object_id ('"dbo"."CC_MakeModelTest__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_MakeModelTest__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_MakeModelTest__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_MakeModelTest__dbt_tmp"
    end


   EXEC('create view dbo.CC_MakeModelTest__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [Id],
	cast([VehicleTypeID] as int) [VehicleTypeId],
	cast([CountryID] as int) [CountryId],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([IsActive] as bit) [IsActive],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([Makeplural] as nvarchar(4000)) [MakePlural],
	cast([Modelplural] as nvarchar(4000)) [ModelPlural],
	cast([Makeslug] as nvarchar(4000)) [MakeSlug],
	cast([Modelslug] as nvarchar(4000)) [ModelSlug],
	cast([RelatedModelslugs] as nvarchar(4000)) [RelatedModelSlugs] 
From stg.[CC_MakeModelTest_FinalView]
    ');

  CREATE TABLE "dbo"."CC_MakeModelTest__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_MakeModelTest__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_MakeModelTest__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_MakeModelTest__dbt_tmp_temp_view"
    end


