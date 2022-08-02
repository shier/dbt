
      
  
  if object_id ('"stg"."Auct_UpdateEvent_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UpdateEvent_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_UpdateEvent_Incr"','U') is not null
    begin
    drop table "stg"."Auct_UpdateEvent_Incr"
    end


   EXEC('create view stg.Auct_UpdateEvent_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(UsersID as varchar), Cast(TableID as varchar), Cast(ContactID as varchar), Cast(AuctionID as varchar), Cast(AddressTypeID as varchar), Cast(AddressID as varchar), Cast(Country as varchar), Cast(DealerID as varchar), Cast(AddressstatID as varchar), Cast(DealerstatID as varchar), Cast(ActionTime as varchar), Cast(DealernumExpire as varchar), Cast(DeAlerTaxExpire as varchar), TaxIDNumber, TaxIDsTage, DealerComment, City, StateProvince, PostalCode, Careof, DealerNumber, DealerState, OriginalData, Address1, Address2)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_UpdateEvent_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_UpdateEvent_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_UpdateEvent_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_UpdateEvent_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UpdateEvent_Incr_temp_view"
    end



  