
  
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
	[CHARGEID] [ChargeID],
	[FEETYPEID] [FeeTypeID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[INVOICEID] [InvoiceID],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	cast([ISTAXABLE] as nvarchar(4000)) [IsTaxable],
	[CONSIGNMENTID] [ConsignmentID],
	[BIDDERID] [BidderID],
	[DEALERID] [DealerID],
	[VENDORID] [VendorID],
	[MEDIAID] [MediaID],
	[SPONSORID] [SponsorID],
	[USERID] [UserID],
	[AMOUNT] [Amount]
From stg.[Auct_ChargeDeleted_Raw]
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


