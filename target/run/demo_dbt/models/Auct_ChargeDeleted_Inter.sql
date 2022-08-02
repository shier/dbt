
  
  if object_id ('"stg"."Auct_ChargeDeleted_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ChargeDeleted_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ChargeDeleted_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ChargeDeleted_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ChargeDeleted_Inter__dbt_tmp_temp_view as
    
Select
	AMOUNT Amount,
	SPONSORID SponsorID,
	USERID UserID,
	INVOICEID InvoiceID,
	CONSIGNMENTID ConsignmentID,
	BIDDERID BidderID,
	DEALERID DealerID,
	VENDORID VendorID,
	MEDIAID MediaID,
	CHARGEID ChargeID,
	FEETYPEID FeeTypeID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(COMMENTS as nvarchar(4000)) Comments,
	cast(ISTAXABLE as nvarchar(4000)) IsTaxable
From Auct_ChargeDeleted_Raw
    ');

  CREATE TABLE "stg"."Auct_ChargeDeleted_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ChargeDeleted_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ChargeDeleted_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ChargeDeleted_Inter__dbt_tmp_temp_view"
    end


