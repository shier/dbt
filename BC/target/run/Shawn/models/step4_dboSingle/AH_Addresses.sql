
  
  if object_id ('"dbo"."AH_Addresses__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Addresses__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Addresses__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Addresses__dbt_tmp"
    end


   EXEC('create view dbo.AH_Addresses__dbt_tmp_temp_view as
    
Select
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UserID] as int) [UserId],
	cast([ID] as int) [Id],
	cast([CountryID] as int) [CountryId],
	cast([Street1] as varchar(128)) [Street1],
	cast([Street2] as varchar(128)) [Street2],
	cast([City] as nvarchar(100)) [City],
	cast([Stateregion] as nvarchar(50)) [StateRegion],
	cast([ZipPostal] as nvarchar(50)) [ZipPostal],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([Description] as nvarchar(4000)) [Description],
	cast([FirstName] as nvarchar(500)) [FirstName],
	cast([LastName] as nvarchar(500)) [LastName] 
From stg.[AH_Addresses_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Addresses__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Addresses__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Addresses__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Addresses__dbt_tmp_temp_view"
    end


