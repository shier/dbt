
  
  if object_id ('"dbo"."CC_MakeModel__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_MakeModel__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_MakeModel__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_MakeModel__dbt_tmp"
    end


   EXEC('create view dbo.CC_MakeModel__dbt_tmp_temp_view as
    
Select
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([ID] as int) [Id],
	cast([VehicleTypeID] as int) [VehicleTypeId],
	cast([CountryID] as int) [CountryId],
	cast([CategoryID] as int) [CategoryId],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([Makeplural] as nvarchar(4000)) [MakePlural],
	cast([Modelplural] as nvarchar(4000)) [ModelPlural],
	cast([RelatedModelslugs] as nvarchar(4000)) [RelatedModelSlugs],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_MakeModel_FinalView]
    ');

  CREATE TABLE "dbo"."CC_MakeModel__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_MakeModel__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_MakeModel__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_MakeModel__dbt_tmp_temp_view"
    end


