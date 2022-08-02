
  
  if object_id ('"stg"."Auct_Inspection_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Inspection_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Inspection_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Inspection_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Inspection_Inter__dbt_tmp_temp_view as
    
Select
	DATEPERFORMED DateperFormed,
	DATEREQUESTED DateRequested,
	CREATED Created,
	INSPECTIONID InspectionID,
	CARID CarID,
	OWNERCONTACTID OwnerContactID,
	PERFORMEDBYCONTACTID PerFormedByContactID,
	UPDATEEVENTID UpdateEventID,
	cast(RESULTS as nvarchar(4000)) Results
From Auct_Inspection_Raw
    ');

  CREATE TABLE "stg"."Auct_Inspection_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Inspection_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Inspection_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Inspection_Inter__dbt_tmp_temp_view"
    end


