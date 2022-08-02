
  
  if object_id ('"stg"."Auct_FeeType_Credential_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_FeeType_Credential_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_FeeType_Credential_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_FeeType_Credential_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_FeeType_Credential_Inter__dbt_tmp_temp_view as
    
Select
	[CREDENTIALID] [CredentialID],
	[FEETYPE_CREDENTIAL_ID] [FeeType_Credential_ID],
	[FEETYPEID] [FeeTypeID],
	[CREDENTIALQUANTITY] [CredentialQuantity],
	[CREATEDBYUSERID] [CreatedByUserID],
	[CREATEDDATE] [CreatedDate],
	[QUEUEID] [QueueID],
	cast([CREDENTIALNAME] as nvarchar(4000)) [CredentialName],
	[ACTIVE] [Active]
From stg.[Auct_FeeType_Credential_Raw]
    ');

  CREATE TABLE "stg"."Auct_FeeType_Credential_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_FeeType_Credential_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_FeeType_Credential_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_FeeType_Credential_Inter__dbt_tmp_temp_view"
    end


