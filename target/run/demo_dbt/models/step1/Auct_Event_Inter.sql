
  
  if object_id ('"stg"."Auct_Event_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Event_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Event_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Event_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Event_Inter__dbt_tmp_temp_view as
    
Select
	[EVENTID] [EventID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([CODE] as nvarchar(4000)) [Code],
	cast([PROJECTCODE] as nvarchar(4000)) [ProjectCode],
	[YEAR] [Year],
	[PARENTEVENTID] [ParentEventID],
	[EVENTTYPEID] [EventTypeID],
	[STARTDATE] [StartDate],
	[ENDDATE] [EndDate],
	[CREATED] [Created],
	[ACTIVE] [Active],
	[CREATEDBYUSERID] [CreatedByUserID],
	[LOCATIONADDRESSID] [LocationAddressID],
	[SHIPPINGADDRESSID] [ShippingAddressID],
	[BILLINGADDRESSID] [BillingAddressID],
	cast([IMAGEURL] as nvarchar(4000)) [ImageURL],
	[VENUEID] [VenueID]
From stg.[Auct_Event_Raw]
    ');

  CREATE TABLE "stg"."Auct_Event_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Event_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Event_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Event_Inter__dbt_tmp_temp_view"
    end


