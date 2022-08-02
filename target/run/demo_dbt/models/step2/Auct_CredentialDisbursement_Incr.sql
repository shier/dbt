
      
  
  if object_id ('"stg"."Auct_CredentialDisbursement_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CredentialDisbursement_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CredentialDisbursement_Incr"','U') is not null
    begin
    drop table "stg"."Auct_CredentialDisbursement_Incr"
    end


   EXEC('create view stg.Auct_CredentialDisbursement_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(DisbursedFromContactID as varchar), Cast(DisbursedByUserID as varchar), Cast(CredentialTypeID as varchar), Cast(PulseEventID as varchar), Cast(AuctionID as varchar), Cast(PulseOrderID as varchar), Cast(DisbursementDate as varchar), CredentialSequenceNumber, DisbursedByUserName, CredentialTypeName, DisbursedtoName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CredentialDisbursement_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_CredentialDisbursement_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CredentialDisbursement_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_CredentialDisbursement_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CredentialDisbursement_Incr_temp_view"
    end



  