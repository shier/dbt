
      
  
  if object_id ('"stg"."Auct_Journal_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Journal_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Journal_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Journal_Incr"
    end


   EXEC('create view stg.Auct_Journal_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(TimeCreated as varchar), Cast(DateCreated as varchar), Cast(DateModified as varchar), Cast(VendorSpaceID as varchar), Cast(InventoryID as varchar), Cast(Country as varchar), Cast(PaymentMethod as varchar), Cast(InvoiceID as varchar), Cast(BidderID as varchar), Cast(DealerID as varchar), Cast(VendorID as varchar), Cast(MediaID as varchar), Cast(SponsorID as varchar), Cast(AuctionID as varchar), Cast(ProjectID as varchar), Cast(Ln as varchar), Cast(AccountID as varchar), Cast(CustomerAccountID as varchar), Cast(CarConsignmentID as varchar), JournalType, DepositID, ContactName, Address, City, CreditCardNumber, CreditCardExp, Comments, CreatedBy, ModifiedBy, ServerCreatedBy, StateProvince, PostalCode, Phoneac, Phone, Description, CheckNumber, ServerModifiedBy, Status, Cast(Rn as varchar), Cast(Credit as varchar), Cast(Debit as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Journal_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Journal_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Journal_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Journal_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Journal_Incr_temp_view"
    end



  