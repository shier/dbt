
      
      
      delete from "BJAC_DW_PROD"."stg"."Auct_Lead_YMM_Incr"
          where (
                dbt_scd_id) in (
      select (dbt_scd_id)
      from "BJAC_DW_PROD"."stg"."#Auct_Lead_YMM_Incr__dbt_tmp"
          );

      
      

      insert into "BJAC_DW_PROD"."stg"."Auct_Lead_YMM_Incr" ("Lead_YMM_ID", "UsersID", "Car_Year", "Car_Make", "Car_Model", "Create_Date", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
          (
      select "Lead_YMM_ID", "UsersID", "Car_Year", "Car_Make", "Car_Model", "Create_Date", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
      from "BJAC_DW_PROD"."stg"."#Auct_Lead_YMM_Incr__dbt_tmp"
          )


  