
  
  if object_id ('"stg"."Auct_SpareParts_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SpareParts_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SpareParts_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SpareParts_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SpareParts_Inter__dbt_tmp_temp_view as
    
Select
	[SPAREPARTSID] [SparePartsID],
	[DRIVERINFORMATIONID] [DriverInFormationID],
	[SPAREPARTSTYPEID] [SparePartsTypeID],
	cast([BARCODEID] as nvarchar(4000)) [BarcodeID],
	cast([PARTSDESCRIPTION] as nvarchar(4000)) [PartsDescription],
	cast([INACTIVE] as nvarchar(4000)) [InActive],
	[INACTIVEUPDATEEVENTID] [InActiveUpdateEventID],
	cast([CHECKOUTTEXT] as nvarchar(4000)) [CheckOutText],
	[CHECKOUTUPDATEEVENTID] [CheckOutUpdateEventID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([SPACENUMBER] as nvarchar(4000)) [SpaceNumber]
From stg.[Auct_SpareParts_Raw]
    ');

  CREATE TABLE "stg"."Auct_SpareParts_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SpareParts_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SpareParts_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SpareParts_Inter__dbt_tmp_temp_view"
    end


