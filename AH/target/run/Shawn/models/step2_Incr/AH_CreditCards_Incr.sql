
      
      
      delete from "BJAC_DW_PROD"."dbo_stg"."AH_CreditCards_Incr"
          where (
                dbt_scd_id) in (
      select (dbt_scd_id)
      from "BJAC_DW_PROD"."dbo_stg"."#AH_CreditCards_Incr__dbt_tmp"
          );

      
      

      insert into "BJAC_DW_PROD"."dbo_stg"."AH_CreditCards_Incr" ("ID", "ExpirationMonth", "ExpirationYear", "CreditCardTypeID", "UserID", "AddressID", "CreatedOn", "UpdatedOn", "DeletedOn", "CardNumber", "LastUpdatedUser", "LastFourdigits", "Description", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
          (
      select "ID", "ExpirationMonth", "ExpirationYear", "CreditCardTypeID", "UserID", "AddressID", "CreatedOn", "UpdatedOn", "DeletedOn", "CardNumber", "LastUpdatedUser", "LastFourdigits", "Description", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
      from "BJAC_DW_PROD"."dbo_stg"."#AH_CreditCards_Incr__dbt_tmp"
          )


  