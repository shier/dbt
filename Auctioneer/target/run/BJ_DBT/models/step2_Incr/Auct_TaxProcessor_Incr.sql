
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_TaxProcessor_Incr" ("hashValue", "effectiveTime", "NexusState", "PurchaseState", "ClassName", "ItemTaxTypeID", "TaxruleDescription", "AuctionTypeBit")
    (
        select "hashValue", "effectiveTime", "NexusState", "PurchaseState", "ClassName", "ItemTaxTypeID", "TaxruleDescription", "AuctionTypeBit"
        from "BJAC_DW_PROD"."stg"."#Auct_TaxProcessor_Incr__dbt_tmp"
    );

  