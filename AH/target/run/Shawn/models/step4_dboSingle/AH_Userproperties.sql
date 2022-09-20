
  
  if object_id ('"dbo"."AH_Userproperties__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Userproperties__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Userproperties__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Userproperties__dbt_tmp"
    end


   EXEC('create view dbo.AH_Userproperties__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [Id],
	cast([IntnativeValue] as int) [IntNativeValue],
	cast([UserID] as int) [UserId],
	cast([CustomFieldID] as int) [CustomFieldId],
	cast([BoolnativeValue] as bit) [BoolNativeValue],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DateTimenativeValue] as datetime) [DateTimeNativeValue],
	cast([StringnativeValue] as nvarchar(4000)) [StringNativeValue],
	cast([EnumnativeValue] as nvarchar(4000)) [EnumNativeValue],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([DecimalnativeValue] as numeric(19,4)) [DecimalNativeValue] 
From stg.[AH_Userproperties_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Userproperties__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Userproperties__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Userproperties__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Userproperties__dbt_tmp_temp_view"
    end


