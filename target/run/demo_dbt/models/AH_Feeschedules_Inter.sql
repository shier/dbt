
  
  if object_id ('"stg"."AH_Feeschedules_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Feeschedules_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Feeschedules_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Feeschedules_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Feeschedules_Inter__dbt_tmp_temp_view as
    
Select
	PayToProceed PayToproceed,
	Id ID,
	EventId EventID,
	ListingTypeId ListingTypeID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	cast(Description as nvarchar(4000)) Description,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Name as nvarchar(4000)) Name
From AH_Feeschedules_Raw
    ');

  CREATE TABLE "stg"."AH_Feeschedules_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Feeschedules_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Feeschedules_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Feeschedules_Inter__dbt_tmp_temp_view"
    end


