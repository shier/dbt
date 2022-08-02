
  
  if object_id ('"stg"."AH_Addresses_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Addresses_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Addresses_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Addresses_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Addresses_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[CreatedOn] [CreatedOn],
	[UserId] [UserID],
	[CountryId] [CountryID],
	cast([Street1] as nvarchar(4000)) [Street1],
	cast([Street2] as nvarchar(4000)) [Street2],
	cast([City] as nvarchar(4000)) [City],
	cast([StateRegion] as nvarchar(4000)) [Stateregion],
	cast([ZipPostal] as nvarchar(4000)) [ZipPostal],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Description] as nvarchar(4000)) [Description],
	cast([FirstName] as nvarchar(4000)) [FirstName],
	cast([LastName] as nvarchar(4000)) [LastName]
From stg.[AH_Addresses_Raw]
    ');

  CREATE TABLE "stg"."AH_Addresses_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Addresses_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Addresses_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Addresses_Inter__dbt_tmp_temp_view"
    end


