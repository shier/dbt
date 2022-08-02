
      
  
  if object_id ('"stg"."Auct_AcctArchive_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AcctArchive_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AcctArchive_Incr"','U') is not null
    begin
    drop table "stg"."Auct_AcctArchive_Incr"
    end


   EXEC('create view stg.Auct_AcctArchive_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(LotNumber as varchar), Cast(FeeAmount as varchar), Cast(PaymentAMT as varchar), Cast(ContactID as varchar), Cast(AuctionID as varchar), Cast(DocumentType as varchar), Cast(Created as varchar), AcctType, FeeName, PaymentType, SystemNote, UserNote, UserName, Dept, VContactID)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AcctArchive_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_AcctArchive_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AcctArchive_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_AcctArchive_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AcctArchive_Incr_temp_view"
    end



  