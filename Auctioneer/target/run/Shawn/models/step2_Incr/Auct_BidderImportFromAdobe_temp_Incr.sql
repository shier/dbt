
      
      
      delete from "BJAC_DW_PROD"."stg"."Auct_BidderImportFromAdobe_temp_Incr"
          where (
                dbt_scd_id) in (
      select (dbt_scd_id)
      from "BJAC_DW_PROD"."stg"."#Auct_BidderImportFromAdobe_temp_Incr__dbt_tmp"
          );

      
      

      insert into "BJAC_DW_PROD"."stg"."Auct_BidderImportFromAdobe_temp_Incr" ("Created_Date", "Agreement_Status", "Recipient_1_Name", "Recipient_1_Email", "Recipient_1_Role", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
          (
      select "Created_Date", "Agreement_Status", "Recipient_1_Name", "Recipient_1_Email", "Recipient_1_Role", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
      from "BJAC_DW_PROD"."stg"."#Auct_BidderImportFromAdobe_temp_Incr__dbt_tmp"
          )


  