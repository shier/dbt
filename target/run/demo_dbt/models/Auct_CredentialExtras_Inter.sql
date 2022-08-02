
  
  if object_id ('"stg"."Auct_CredentialExtras_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CredentialExtras_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CredentialExtras_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_CredentialExtras_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_CredentialExtras_Inter__dbt_tmp_temp_view as
    
Select
	cast(EXTRATAG as nvarchar(4000)) ExtraTag,
	cast(EXTRAQUANTITY as nvarchar(4000)) ExtraQuantity,
	ACTIVE Active,
	FEETYPECREDENTIALEXTRAID FeeTypeCredentialExtraID,
	EXTRA_ELEMENT_ID Extra_Element_ID,
	FEETYPE_CREDENTIAL_ID FeeType_Credential_ID
From Auct_CredentialExtras_Raw
    ');

  CREATE TABLE "stg"."Auct_CredentialExtras_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CredentialExtras_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_CredentialExtras_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CredentialExtras_Inter__dbt_tmp_temp_view"
    end


