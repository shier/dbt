
  
  if object_id ('"stg"."Auct_Credential_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Credential_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Credential_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Credential_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Credential_Inter__dbt_tmp_temp_view as
    
Select
	cast(CREDENTIALNAME as nvarchar(4000)) CredentialName,
	ACTIVE Active,
	CREATEDDATE CreatedDate,
	CREATEDBYUSERID CreatedByUserID,
	QUEUEID QueueID,
	FEETYPE_CREDENTIAL_ID FeeType_Credential_ID,
	CREDENTIALID CredentialID,
	FEETYPEID FeeTypeID,
	CREDENTIALQUANTITY CredentialQuantity
From Auct_Credential_Raw
    ');

  CREATE TABLE "stg"."Auct_Credential_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Credential_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Credential_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Credential_Inter__dbt_tmp_temp_view"
    end


