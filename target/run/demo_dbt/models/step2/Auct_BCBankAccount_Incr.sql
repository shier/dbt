
      
  
  if object_id ('"stg"."Auct_BCBankAccount_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BCBankAccount_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BCBankAccount_Incr"','U') is not null
    begin
    drop table "stg"."Auct_BCBankAccount_Incr"
    end


   EXEC('create view stg.Auct_BCBankAccount_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Name, Cast(Active as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BCBankAccount_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_BCBankAccount_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BCBankAccount_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_BCBankAccount_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BCBankAccount_Incr_temp_view"
    end



  