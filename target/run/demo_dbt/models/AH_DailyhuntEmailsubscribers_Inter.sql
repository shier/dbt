
  
  if object_id ('"stg"."AH_DailyhuntEmailsubscribers_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_DailyhuntEmailsubscribers_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_DailyhuntEmailsubscribers_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_DailyhuntEmailsubscribers_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_DailyhuntEmailsubscribers_Inter__dbt_tmp_temp_view as
    
Select
	cast(Email as nvarchar(4000)) Email,
	cast(FirstName as nvarchar(4000)) FirstName,
	cast(LastName as nvarchar(4000)) LastName,
	AsEnthusiast ASenthusiast,
	AsBidder AsBidder,
	AsConsignor AsConsignor,
	Id ID,
	ZipCode ZipCode
From AH_DailyhuntEmailsubscribers_Raw
    ');

  CREATE TABLE "stg"."AH_DailyhuntEmailsubscribers_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_DailyhuntEmailsubscribers_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_DailyhuntEmailsubscribers_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_DailyhuntEmailsubscribers_Inter__dbt_tmp_temp_view"
    end


