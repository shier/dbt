
  
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
	cast([ID] as int) [ID_RWXUserProperties],
	cast([IntnativeValue] as int) [IntnativeValue],
	cast([UserID] as int) [UserID],
	cast([CustomFieldID] as int) [CustomFieldID],
	cast([BoolnativeValue] as bit) [HasBoolNativeValue],
	cast([CreatedOn] as datetime) [Created_RWXUserProperties],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXUserProperties],
	cast([DeletedOn] as datetime) [DeletedDate_RWXUserProperties],
	cast([DateTimenativeValue] as datetime) [DateTimenativeValue],
	cast([StringnativeValue] as nvarchar(4000)) [StringNativeValue],
	cast([EnumnativeValue] as nvarchar(4000)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXUserProperties],
	cast([DecimalnativeValue] as numeric(19,4)) [DecimalnativeValue] 
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


