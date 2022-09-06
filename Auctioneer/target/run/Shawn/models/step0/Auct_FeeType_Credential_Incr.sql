
      
  
  if object_id ('"stg"."Auct_FeeType_Credential_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_FeeType_Credential_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_FeeType_Credential_Incr"','U') is not null
    begin
    drop table "stg"."Auct_FeeType_Credential_Incr"
    end


   EXEC('create view stg.Auct_FeeType_Credential_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([FeeType_Credential_ID] as varchar), Cast([CredentialID] as varchar), Cast([FeeTypeID] as varchar), Cast([CredentialQuantity] as varchar), Cast([CreatedByUserID] as varchar), Cast([CreatedDate] as varchar), Cast([QueueID] as varchar), [CredentialName], Cast([Active] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_FeeType_Credential_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_FeeType_Credential_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_FeeType_Credential_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_FeeType_Credential_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_FeeType_Credential_Incr_temp_view"
    end



  