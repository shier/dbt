
  
  if object_id ('"stg"."AH_Tiers_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Tiers_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Tiers_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Tiers_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Tiers_Inter__dbt_tmp_temp_view as
    
Select
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	Id ID,
	FeeScheduleId FeescheduleID,
	cast(ValueType as nvarchar(4000)) ValueType,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	LowerBoundInclusive Lowerboundinclusive,
	UpperBoundExclusive Upperboundexclusive,
	Value Value
From AH_Tiers_Raw
    ');

  CREATE TABLE "stg"."AH_Tiers_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Tiers_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Tiers_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Tiers_Inter__dbt_tmp_temp_view"
    end


