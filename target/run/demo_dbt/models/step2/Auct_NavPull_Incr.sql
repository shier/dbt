
      
  
  if object_id ('"stg"."Auct_NavPull_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavPull_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavPull_Incr"','U') is not null
    begin
    drop table "stg"."Auct_NavPull_Incr"
    end


   EXEC('create view stg.Auct_NavPull_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(AuctionID as varchar), Cast(Status as varchar), Cast(EntryNumber as varchar), Cast(Amount as varchar), Cast(CreditAMT as varchar), Cast(DebitAMT as varchar), Cast(PostingDate as varchar), Cast(Created as varchar), Hidden, CustvEndID, DocNumber, BankAcctno, Description, ProjectCode, Import)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NavPull_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_NavPull_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavPull_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_NavPull_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavPull_Incr_temp_view"
    end



  