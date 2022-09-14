
      
  
  if object_id ('"stg"."AH_CreditCards_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_CreditCards_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."AH_CreditCards_Incr"','U') is not null
    begin
    drop table "stg"."AH_CreditCards_Incr"
    end


   EXEC('create view stg.AH_CreditCards_Incr_temp_view as
    
With hashData as (
		Select
			*, HASHBYTES(''SHA2_256'', concat(Cast([ID] as varchar), [ExpirationMonth], [ExpirationYear], Cast([CreditCardTypeID] as varchar), Cast([UserID] as varchar), Cast([AddressID] as varchar), Cast([CreatedOn] as varchar), Cast([UpdatedOn] as varchar), Cast([DeletedOn] as varchar), [CardNumber], [LastUpdatedUser], [LastFourdigits], [Description])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[AH_CreditCards_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."AH_CreditCards_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_CreditCards_Incr_temp_view)

   
  
  if object_id ('"stg"."AH_CreditCards_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_CreditCards_Incr_temp_view"
    end



  