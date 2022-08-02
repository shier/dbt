
  
  if object_id ('"stg"."AH_Contactus_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Contactus_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Contactus_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Contactus_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Contactus_Inter__dbt_tmp_temp_view as
    
Select
	cast(LastName as nvarchar(4000)) LastName,
	cast(Message as nvarchar(4000)) Message,
	cast(Email as nvarchar(4000)) Email,
	cast(FirstName as nvarchar(4000)) FirstName,
	Id ID
From AH_Contactus_Raw
    ');

  CREATE TABLE "stg"."AH_Contactus_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Contactus_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Contactus_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Contactus_Inter__dbt_tmp_temp_view"
    end


