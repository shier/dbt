
  
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
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXAddresses],
	cast([DeletedOn] as datetime) [DeletedDate_RWXAddresses],
	cast([CreatedOn] as datetime) [Created_RWXAddresses],
	cast([UserID] as int) [UserID],
	cast([ID] as int) [AddressID],
	cast([CountryID] as int) [CountryID],
	cast([Street1] as varchar(128)) [Street1],
	cast([Street2] as varchar(128)) [Street2],
	cast([City] as nvarchar(100)) [City],
	cast([Stateregion] as nvarchar(50)) [State],
	cast([ZipPostal] as nvarchar(50)) [PostalCode],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXAddresses],
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


