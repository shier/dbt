
  
  if object_id ('"stg"."Auct_Groupgroup_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Groupgroup_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Groupgroup_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Groupgroup_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Groupgroup_Inter__dbt_tmp_temp_view as
    
Select
	CREATED Created,
	PARENTGROUPID ParentGroupID,
	CHILDGROUPID ChildGroupID,
	UPDATEEVENTID UpdateEventID,
	GROUPGROUPID GroupgroupID
From Auct_Groupgroup_Raw
    ');

  CREATE TABLE "stg"."Auct_Groupgroup_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Groupgroup_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Groupgroup_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Groupgroup_Inter__dbt_tmp_temp_view"
    end


