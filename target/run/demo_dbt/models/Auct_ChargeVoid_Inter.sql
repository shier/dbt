
  
  if object_id ('"stg"."Auct_ChargeVoid_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ChargeVoid_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ChargeVoid_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ChargeVoid_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ChargeVoid_Inter__dbt_tmp_temp_view as
    
Select
	AMOUNT Amount,
	UNITPRICE UnitPrice,
	cast(COMMENTS as nvarchar(4000)) Comments,
	cast(ISTAXABLE as nvarchar(4000)) IsTaxable,
	cast(PENDINGNAVISION as nvarchar(4000)) PEndingNavision,
	cast(OVERRIDEREASON as nvarchar(4000)) OverrideReason,
	cast(REJECTIONREASON as nvarchar(4000)) RejectionReason,
	DEALERID DealerID,
	VENDORID VendorID,
	MEDIAID MediaID,
	SPONSORID SponsorID,
	USERID UserID,
	CANCANCEL CanCancel,
	CHARGEID ChargeID,
	FEETYPEID FeeTypeID,
	UPDATEEVENTID UpdateEventID,
	INVOICEID InvoiceID,
	CONSIGNMENTID ConsignmentID,
	BIDDERID BidderID,
	CANCELEDBYCHARGEID CanceledByChargeID,
	CANCELEDCHARGEID CanceledChargeID,
	RESERVATIONID ReservationID,
	APPROVALSTATEID ApprovalStateID,
	APPROVEDBYUSERID ApprovedByUserID,
	CHARGEVOIDID ChargeVoidID,
	CREATED Created,
	ACTIONDATE ActionDate
From Auct_ChargeVoid_Raw
    ');

  CREATE TABLE "stg"."Auct_ChargeVoid_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ChargeVoid_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ChargeVoid_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ChargeVoid_Inter__dbt_tmp_temp_view"
    end


