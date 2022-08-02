
      
  
  if object_id ('"stg"."Auct_CredentialExtras_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CredentialExtras_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CredentialExtras_Incr"','U') is not null
    begin
    drop table "stg"."Auct_CredentialExtras_Incr"
    end


   EXEC('create view stg.Auct_CredentialExtras_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(ExtraTag, ExtraQuantity, Cast(Active as varchar), Cast(Extra_Element_ID as varchar), Cast(FeeType_Credential_ID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CredentialExtras_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_CredentialExtras_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CredentialExtras_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_CredentialExtras_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CredentialExtras_Incr_temp_view"
    end



  