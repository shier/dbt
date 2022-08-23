
  
  if object_id ('"dbo"."CC_MakeModel_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_MakeModel_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_MakeModel_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_MakeModel_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_MakeModel_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([VehicleTypeID] as int) [VehicleTypeID],
	cast([CountryID] as int) [CountryID],
	cast([CategoryID] as int) [CategoryID],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([Makeplural] as nvarchar(4000)) [Makeplural],
	cast([Modelplural] as nvarchar(4000)) [Modelplural],
	cast([RelatedModelslugs] as nvarchar(4000)) [RelatedModelslugs],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_MakeModel_FinalView]
    ');

  CREATE TABLE "dbo"."CC_MakeModel_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_MakeModel_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_MakeModel_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_MakeModel_FromStg__dbt_tmp_temp_view"
    end


