
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_TaxProcessor_Incr" ("hashValue", "effectiveTime", "NexusState", "PurchaseState", "ClassName", "ItemTaxTypeID", "TaxruleDescription", "AuctionTypeBit")
    (
        select "hashValue", "effectiveTime", "NexusState", "PurchaseState", "ClassName", "ItemTaxTypeID", "TaxruleDescription", "AuctionTypeBit"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_TaxProcessor_Incr__dbt_tmp"
    );

  