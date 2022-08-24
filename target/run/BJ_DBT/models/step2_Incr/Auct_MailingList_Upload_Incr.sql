
      
  
  if object_id ('"stg"."Auct_MailingList_Upload_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MailingList_Upload_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MailingList_Upload_Incr"','U') is not null
    begin
    drop table "stg"."Auct_MailingList_Upload_Incr"
    end


   EXEC('create view stg.Auct_MailingList_Upload_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat([TransactionID], [FirstName], [LastName], [Middle], [Address1], [Address2], [City], [StateProvince], Cast([CountryID] as varchar), [County], Cast([EventID] as varchar), [Careof], [PostalCode], Cast([Created] as varchar), Cast([Active] as varchar), Cast([MailListUploadID] as varchar), [ErrorMessage])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MailingList_Upload_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_MailingList_Upload_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MailingList_Upload_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_MailingList_Upload_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MailingList_Upload_Incr_temp_view"
    end



  