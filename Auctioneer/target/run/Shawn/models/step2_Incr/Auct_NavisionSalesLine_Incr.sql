
      
      
      delete from "BJAC_DW_PROD"."stg"."Auct_NavisionSalesLine_Incr"
          where (
                dbt_scd_id) in (
      select (dbt_scd_id)
      from "BJAC_DW_PROD"."stg"."#Auct_NavisionSalesLine_Incr__dbt_tmp"
          );

      
      

      insert into "BJAC_DW_PROD"."stg"."Auct_NavisionSalesLine_Incr" ("DocumentType", "AuctionDocumentno", "Lineno", "Type", "No", "Description", "Description2", "Status", "StatusMessage", "GlobalDimension1Code", "GlobalDimension2Code", "ShortCutDimension4Code", "ShortCutDimension8Code", "ShortCutDimension3Code", "BusinessUnit", "WrotetoNavision", "ShortCutDimension5Code", "Quantity", "UnitPriceexclTax", "Unitcost", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
          (
      select "DocumentType", "AuctionDocumentno", "Lineno", "Type", "No", "Description", "Description2", "Status", "StatusMessage", "GlobalDimension1Code", "GlobalDimension2Code", "ShortCutDimension4Code", "ShortCutDimension8Code", "ShortCutDimension3Code", "BusinessUnit", "WrotetoNavision", "ShortCutDimension5Code", "Quantity", "UnitPriceexclTax", "Unitcost", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
      from "BJAC_DW_PROD"."stg"."#Auct_NavisionSalesLine_Incr__dbt_tmp"
          )


  