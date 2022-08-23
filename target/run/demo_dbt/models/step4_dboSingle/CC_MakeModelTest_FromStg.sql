
  
  if object_id ('"dbo"."CC_MakeModelTest_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_MakeModelTest_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_MakeModelTest_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_MakeModelTest_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_MakeModelTest_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([VehicleTypeID] as int) [VehicleTypeID],
	cast([CountryID] as int) [CountryID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([IsActive] as bit) [IsActive],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([Makeplural] as nvarchar(4000)) [Makeplural],
	cast([Modelplural] as nvarchar(4000)) [Modelplural],
	cast([Makeslug] as nvarchar(4000)) [Makeslug],
	cast([Modelslug] as nvarchar(4000)) [Modelslug],
	cast([RelatedModelslugs] as nvarchar(4000)) [RelatedModelslugs] 
From stg.[CC_MakeModelTest_FinalView]
    ');

  CREATE TABLE "dbo"."CC_MakeModelTest_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_MakeModelTest_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_MakeModelTest_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_MakeModelTest_FromStg__dbt_tmp_temp_view"
    end


