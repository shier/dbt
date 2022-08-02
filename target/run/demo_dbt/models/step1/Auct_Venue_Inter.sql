
  
  if object_id ('"stg"."Auct_Venue_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Venue_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Venue_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Venue_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Venue_Inter__dbt_tmp_temp_view as
    
Select
	[VENUEID] [VenueID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ADDRESSID] [AddressID],
	cast([SHIPPINGNAME] as nvarchar(4000)) [ShippingName],
	[SHIPPINGADDRESSID] [ShippingAddressID],
	[ACTIVE] [Active]
From stg.[Auct_Venue_Raw]
    ');

  CREATE TABLE "stg"."Auct_Venue_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Venue_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Venue_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Venue_Inter__dbt_tmp_temp_view"
    end


