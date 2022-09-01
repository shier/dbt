
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_NavisionPurchaseLine_Incr" ("hashValue", "effectiveTime", "DocumentType", "AuctionDocumentno", "Lneno", "Type", "No", "Description", "Description2", "Quantity", "DirectUnitcostexclTax", "Status", "StatusMessage", "Globaldim1Code", "Globaldim2Code", "ShortCutdim4Code", "ShortCutdim5Code", "ShortCutdim8Code", "ShortCutdim3Code", "BusinessUnit", "WrotetoNavision")
    (
        select "hashValue", "effectiveTime", "DocumentType", "AuctionDocumentno", "Lneno", "Type", "No", "Description", "Description2", "Quantity", "DirectUnitcostexclTax", "Status", "StatusMessage", "Globaldim1Code", "Globaldim2Code", "ShortCutdim4Code", "ShortCutdim5Code", "ShortCutdim8Code", "ShortCutdim3Code", "BusinessUnit", "WrotetoNavision"
        from "BJAC_DW_PROD"."stg"."#Auct_NavisionPurchaseLine_Incr__dbt_tmp"
    );

  