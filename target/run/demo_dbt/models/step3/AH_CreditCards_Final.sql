
  
  if object_id ('"stg"."AH_CreditCards_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_CreditCards_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_CreditCards_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_CreditCards_Final__dbt_tmp"
    end


   EXEC('create view stg.AH_CreditCards_Final__dbt_tmp_temp_view as
    
Select
	[ID],[ExpirationMonth],[ExpirationYear],[CreditCardTypeID],[UserID],[AddressID],[CreatedOn],[UpdatedOn],[DeletedOn],[CardNumber],[LastUpdatedUser],[LastFourdigits],[Description] 
From stg.[AH_CreditCards_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."AH_CreditCards_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_CreditCards_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_CreditCards_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_CreditCards_Final__dbt_tmp_temp_view"
    end


