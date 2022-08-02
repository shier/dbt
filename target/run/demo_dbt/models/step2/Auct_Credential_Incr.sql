
      
  
  if object_id ('"stg"."Auct_Credential_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Credential_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Credential_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Credential_Incr"
    end


   EXEC('create view stg.Auct_Credential_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(CredentialName, Cast(Active as varchar), Cast(CreatedDate as varchar), Cast(CreatedByUserID as varchar), Cast(QueueID as varchar), Cast(FeeType_Credential_ID as varchar), Cast(FeeTypeID as varchar), Cast(CredentialQuantity as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Credential_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Credential_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Credential_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Credential_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Credential_Incr_temp_view"
    end



  