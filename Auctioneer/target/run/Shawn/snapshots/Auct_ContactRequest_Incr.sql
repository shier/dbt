
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."Auct_ContactRequest_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#Auct_ContactRequest_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."Auct_ContactRequest_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."Auct_ContactRequest_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."Auct_ContactRequest_Incr" (
                  "ContactRequestID", "FromContactID", "RequestTypeID", "AssignedContactID", "CompanyID", "PhoneID", "AddressID", "EmailAddress", "RequestFulfilled", "DateFulfilled", "SuBJect", "CustomerComments", "RequestNotes", "AppointmentTimeStamp", "Created", "UpdateEventID", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ContactRequestID", "FromContactID", "RequestTypeID", "AssignedContactID", "CompanyID", "PhoneID", "AddressID", "EmailAddress", "RequestFulfilled", "DateFulfilled", "SuBJect", "CustomerComments", "RequestNotes", "AppointmentTimeStamp", "Created", "UpdateEventID", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#Auct_ContactRequest_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  