
  
  if object_id ('"stg"."Auct_CredentialDisbursement_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CredentialDisbursement_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CredentialDisbursement_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_CredentialDisbursement_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_CredentialDisbursement_Inter__dbt_tmp_temp_view as
    
Select
	CREDENTIALDISBURSEMENTID CredentialDisbursementID,
	DISBURSEDFROMCONTACTID DisbursedFromContactID,
	DISBURSEDBYUSERID DisbursedByUserID,
	CREDENTIALTYPEID CredentialTypeID,
	PULSEEVENTID PulseEventID,
	AUCTIONID AuctionID,
	PULSEORDERID PulseOrderID,
	DISBURSEMENTDATE DisbursementDate,
	cast(CREDENTIALSEQUENCENUMBER as nvarchar(4000)) CredentialSequenceNumber,
	cast(DISBURSEDBYUSERNAME as nvarchar(4000)) DisbursedByUserName,
	cast(CREDENTIALTYPENAME as nvarchar(4000)) CredentialTypeName,
	cast(DISBURSEDTONAME as nvarchar(4000)) DisbursedtoName
From Auct_CredentialDisbursement_Raw
    ');

  CREATE TABLE "stg"."Auct_CredentialDisbursement_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CredentialDisbursement_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_CredentialDisbursement_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CredentialDisbursement_Inter__dbt_tmp_temp_view"
    end


