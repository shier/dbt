
  
  if object_id ('"stg"."Auct_UserGroup_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UserGroup_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_UserGroup_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_UserGroup_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_UserGroup_Inter__dbt_tmp_temp_view as
    
Select
	CREATED Created,
	GROUPID GroupID,
	UPDATEEVENTID UpdateEventID,
	GROUPOWNER GroupOwner,
	cast(NAME as nvarchar(4000)) Name,
	cast(DISTRIBUTIONEMAIL as nvarchar(4000)) DistributionEmail
From Auct_UserGroup_Raw
    ');

  CREATE TABLE "stg"."Auct_UserGroup_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_UserGroup_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_UserGroup_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UserGroup_Inter__dbt_tmp_temp_view"
    end


