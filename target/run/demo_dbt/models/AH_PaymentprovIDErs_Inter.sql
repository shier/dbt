
  
  if object_id ('"stg"."AH_PaymentprovIDErs_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_PaymentprovIDErs_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_PaymentprovIDErs_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_PaymentprovIDErs_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_PaymentprovIDErs_Inter__dbt_tmp_temp_view as
    
Select
	cast(Name as nvarchar(4000)) Name,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	Id ID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	BatchCapable Batchcapable
From AH_PaymentprovIDErs_Raw
    ');

  CREATE TABLE "stg"."AH_PaymentprovIDErs_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_PaymentprovIDErs_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_PaymentprovIDErs_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_PaymentprovIDErs_Inter__dbt_tmp_temp_view"
    end


