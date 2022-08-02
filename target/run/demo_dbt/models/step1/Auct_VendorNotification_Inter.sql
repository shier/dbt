
  
  if object_id ('"stg"."Auct_VendorNotification_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_VendorNotification_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_VendorNotification_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_VendorNotification_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_VendorNotification_Inter__dbt_tmp_temp_view as
    
Select
	[VENDORNOTIFICATIONID] [VendorNotificationID],
	[VENDORID] [VendorID],
	cast([AUCTIONTYPE] as nvarchar(4000)) [AuctionType],
	cast([RECEIVEINFO] as nvarchar(4000)) [ReceiveInfo],
	[UPDATEEVENTID] [UpdateEventID],
	[CREATED] [Created]
From stg.[Auct_VendorNotification_Raw]
    ');

  CREATE TABLE "stg"."Auct_VendorNotification_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_VendorNotification_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_VendorNotification_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_VendorNotification_Inter__dbt_tmp_temp_view"
    end


