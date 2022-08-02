
  
  if object_id ('"stg"."Auct_NewAdditions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NewAdditions_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NewAdditions_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_NewAdditions_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_NewAdditions_Inter__dbt_tmp_temp_view as
    
Select
	[NEWADDITIONSID] [NewAdditionsID],
	[DATECREATED] [DateCreated],
	cast([FIRSTNAME] as nvarchar(4000)) [FirstName],
	cast([MIDDLEINITIAL] as nvarchar(4000)) [MiddleInitial],
	cast([LASTNAME] as nvarchar(4000)) [LastName],
	[CONTACTID] [ContactID]
From stg.[Auct_NewAdditions_Raw]
    ');

  CREATE TABLE "stg"."Auct_NewAdditions_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NewAdditions_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_NewAdditions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NewAdditions_Inter__dbt_tmp_temp_view"
    end


