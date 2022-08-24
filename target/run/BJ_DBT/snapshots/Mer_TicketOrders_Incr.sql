
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."Mer_TicketOrders_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#Mer_TicketOrders_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."Mer_TicketOrders_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."Mer_TicketOrders_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."Mer_TicketOrders_Incr" (
                  "OrderID", "Event_Name", "ShippingMethod", "Phone", "Address", "Address2", "City", "State", "Country", "Ticket_Type", "Ticket_Seq_ID", "Retail_Mask", "Retail_Qualifiers", "Company", "Email", "Price_Code_Desc", "Comp_Name", "Sell_Location_Name", "PaID", "Ticket_Status", "Status", "Season_Name", "Manifest_Name", "Event_Name_Long", "FullName", "Zip", "Price_Code", "Full_Price", "Purchase_Price", "Inet_Purchase_Price", "Printed_Price", "Pc_Ticket", "Pc_Tax", "Block_full_Price", "Block_Purchase_Price", "Paid_Amount", "Season_ID", "Event_ID", "Acct_ID", "Sell_Location_ID", "Num_Seats", "Comp_Code", "SourceID", "Event_Date", "Upd_DateTime", "Privacy_Opt_Out_upd_DateTime", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "OrderID", "Event_Name", "ShippingMethod", "Phone", "Address", "Address2", "City", "State", "Country", "Ticket_Type", "Ticket_Seq_ID", "Retail_Mask", "Retail_Qualifiers", "Company", "Email", "Price_Code_Desc", "Comp_Name", "Sell_Location_Name", "PaID", "Ticket_Status", "Status", "Season_Name", "Manifest_Name", "Event_Name_Long", "FullName", "Zip", "Price_Code", "Full_Price", "Purchase_Price", "Inet_Purchase_Price", "Printed_Price", "Pc_Ticket", "Pc_Tax", "Block_full_Price", "Block_Purchase_Price", "Paid_Amount", "Season_ID", "Event_ID", "Acct_ID", "Sell_Location_ID", "Num_Seats", "Comp_Code", "SourceID", "Event_Date", "Upd_DateTime", "Privacy_Opt_Out_upd_DateTime", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#Mer_TicketOrders_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  