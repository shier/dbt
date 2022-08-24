
  
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
	cast([CredentialDisbursementID] as int) [CredentialDisbursementID],
	cast([DisbursedFromContactID] as int) [DisbursedFromContactID],
	cast([CredentialSequenceNumber] as nvarchar(4000)) [CredentialSequenceNumber],
	cast([DisbursedByUserID] as int) [DisbursedByUserID],
	cast([DisbursedByUserName] as nvarchar(4000)) [DisbursedByUserName],
	cast([DisbursementDate] as DATETIME) [DisbursementDate],
	cast([CredentialTypeID] as int) [CredentialTypeID],
	cast([CredentialTypeName] as nvarchar(4000)) [CredentialTypeName],
	cast([PulseEventID] as int) [PulseEventID],
	cast([AuctionID] as int) [AuctionID],
	cast([PulseOrderID] as int) [PulseOrderID],
	cast([DisbursedtoName] as nvarchar(4000)) [DisbursedToName] 
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


