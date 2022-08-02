
  
  if object_id ('"stg"."Auct_Charge_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Charge_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Charge_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Charge_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Charge_Inter__dbt_tmp_temp_view as
    
Select
	AMOUNT Amount,
	UNITPRICE UnitPrice,
	CREATED Created,
	ACTIONDATE ActionDate,
	CANCELEDCHARGEID CanceledChargeID,
	RESERVATIONID ReservationID,
	APPROVALSTATEID ApprovalStateID,
	APPROVEDBYUSERID ApprovedByUserID,
	VENDORID VendorID,
	MEDIAID MediaID,
	SPONSORID SponsorID,
	USERID UserID,
	CANCANCEL CanCancel,
	CANCELEDBYCHARGEID CanceledByChargeID,
	FEETYPEID FeeTypeID,
	UPDATEEVENTID UpdateEventID,
	INVOICEID InvoiceID,
	CONSIGNMENTID ConsignmentID,
	BIDDERID BidderID,
	DEALERID DealerID,
	CHARGEID ChargeID,
	cast(PENDINGNAVISION as nvarchar(4000)) PEndingNavision,
	cast(OVERRIDEREASON as nvarchar(4000)) OverrideReason,
	cast(REJECTIONREASON as nvarchar(4000)) RejectionReason,
	cast(DOCUMENTID as nvarchar(4000)) DocumentID,
	cast(COMMENTS as nvarchar(4000)) Comments,
	cast(ISTAXABLE as nvarchar(4000)) IsTaxable
From Auct_Charge_Raw
    ');

  CREATE TABLE "stg"."Auct_Charge_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Charge_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Charge_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Charge_Inter__dbt_tmp_temp_view"
    end


