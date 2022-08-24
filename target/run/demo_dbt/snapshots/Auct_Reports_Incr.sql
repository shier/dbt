
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."Auct_Reports_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#Auct_Reports_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."Auct_Reports_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."Auct_Reports_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."Auct_Reports_Incr" (
                  "ReportsID", "ReportsCategory", "ReportsTitle", "ReportsFileName", "Auctionind", "Accountind", "Auctiondayind", "Paymentind", "Value1ind", "Value2ind", "Value3ind", "DateFromind", "Datetoind", "Value1Title", "Value1Example", "Value2Title", "Value2Example", "Value3Title", "Value3Example", "DateFromTitle", "DateFromExample", "DatetoTitle", "DatetoExample", "Description", "IsexcelExport", "IsSorTable", "Value4ind", "Value4Title", "Value4Example", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ReportsID", "ReportsCategory", "ReportsTitle", "ReportsFileName", "Auctionind", "Accountind", "Auctiondayind", "Paymentind", "Value1ind", "Value2ind", "Value3ind", "DateFromind", "Datetoind", "Value1Title", "Value1Example", "Value2Title", "Value2Example", "Value3Title", "Value3Example", "DateFromTitle", "DateFromExample", "DatetoTitle", "DatetoExample", "Description", "IsexcelExport", "IsSorTable", "Value4ind", "Value4Title", "Value4Example", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#Auct_Reports_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  