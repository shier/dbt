
  
  if object_id ('"stg"."Auct_Nexus_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Nexus_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Nexus_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Nexus_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Nexus_Inter__dbt_tmp_temp_view as
    
Select
	CREATED Created,
	NEXUSID NexusID,
	ONLINEBUSINESSUNITID OnlineBusinessUnitID,
	ACTIVE Active,
	cast(CITY as nvarchar(4000)) City,
	cast(STATE as nvarchar(4000)) State,
	cast(COUNTY as nvarchar(4000)) County
From Auct_Nexus_Raw
    ');

  CREATE TABLE "stg"."Auct_Nexus_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Nexus_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Nexus_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Nexus_Inter__dbt_tmp_temp_view"
    end


