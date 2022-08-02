
  
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
	[CREDENTIALDISBURSEMENTID] [CredentialDisbursementID],
	[DISBURSEDFROMCONTACTID] [DisbursedFromContactID],
	cast([CREDENTIALSEQUENCENUMBER] as nvarchar(4000)) [CredentialSequenceNumber],
	[DISBURSEDBYUSERID] [DisbursedByUserID],
	cast([DISBURSEDBYUSERNAME] as nvarchar(4000)) [DisbursedByUserName],
	[DISBURSEMENTDATE] [DisbursementDate],
	[CREDENTIALTYPEID] [CredentialTypeID],
	cast([CREDENTIALTYPENAME] as nvarchar(4000)) [CredentialTypeName],
	[PULSEEVENTID] [PulseEventID],
	[AUCTIONID] [AuctionID],
	[PULSEORDERID] [PulseOrderID],
	cast([DISBURSEDTONAME] as nvarchar(4000)) [DisbursedtoName]
From stg.[Auct_CredentialDisbursement_Raw]
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


