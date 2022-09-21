
  
  if object_id ('"dbo"."Auct_CredentialDisbursement__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CredentialDisbursement__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CredentialDisbursement__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CredentialDisbursement__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CredentialDisbursement__dbt_tmp_temp_view as
    
Select
	cast([CredentialDisbursementID] as int) [CREDENTIALDISBURSEMENTID],
	cast([DisbursedFromContactID] as int) [DISBURSEDFROMCONTACTID],
	cast([CredentialSequenceNumber] as nvarchar(4000)) [CREDENTIALSEQUENCENUMBER],
	cast([DisbursedByUserID] as int) [DISBURSEDBYUSERID],
	cast([DisbursedByUserName] as nvarchar(4000)) [DISBURSEDBYUSERNAME],
	cast([DisbursementDate] as DATETIME) [DISBURSEMENTDATE],
	cast([CredentialTypeID] as int) [CREDENTIALTYPEID],
	cast([CredentialTypeName] as nvarchar(4000)) [CREDENTIALTYPENAME],
	cast([PulseEventID] as int) [PULSEEVENTID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([PulseOrderID] as int) [PULSEORDERID],
	cast([DisbursedtoName] as nvarchar(4000)) [DISBURSEDTONAME] 
From stg.[Auct_CredentialDisbursement_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CredentialDisbursement__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CredentialDisbursement__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CredentialDisbursement__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CredentialDisbursement__dbt_tmp_temp_view"
    end


