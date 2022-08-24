
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_NavisionSalesLine_Incr" ("hashValue", "effectiveTime", "DocumentType", "AuctionDocumentno", "Lineno", "Type", "No", "Description", "Description2", "Status", "StatusMessage", "GlobalDimension1Code", "GlobalDimension2Code", "ShortCutDimension4Code", "ShortCutDimension8Code", "ShortCutDimension3Code", "BusinessUnit", "WrotetoNavision", "ShortCutDimension5Code", "Quantity", "UnitPriceexclTax", "Unitcost")
    (
        select "hashValue", "effectiveTime", "DocumentType", "AuctionDocumentno", "Lineno", "Type", "No", "Description", "Description2", "Status", "StatusMessage", "GlobalDimension1Code", "GlobalDimension2Code", "ShortCutDimension4Code", "ShortCutDimension8Code", "ShortCutDimension3Code", "BusinessUnit", "WrotetoNavision", "ShortCutDimension5Code", "Quantity", "UnitPriceexclTax", "Unitcost"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_NavisionSalesLine_Incr__dbt_tmp"
    );

  