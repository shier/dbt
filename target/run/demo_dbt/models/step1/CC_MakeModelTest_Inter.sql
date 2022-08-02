
  
  if object_id ('"stg"."CC_MakeModelTest_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_MakeModelTest_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_MakeModelTest_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_MakeModelTest_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_MakeModelTest_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[VehicleTypeId] [VehicleTypeID],
	[CountryId] [CountryID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[IsActive] [IsActive],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([MakePlural] as nvarchar(4000)) [Makeplural],
	cast([ModelPlural] as nvarchar(4000)) [Modelplural],
	cast([MakeSlug] as nvarchar(4000)) [Makeslug],
	cast([ModelSlug] as nvarchar(4000)) [Modelslug],
	cast([RelatedModelSlugs] as nvarchar(4000)) [RelatedModelslugs]
From stg.[CC_MakeModelTest_Raw]
    ');

  CREATE TABLE "stg"."CC_MakeModelTest_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_MakeModelTest_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_MakeModelTest_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_MakeModelTest_Inter__dbt_tmp_temp_view"
    end


