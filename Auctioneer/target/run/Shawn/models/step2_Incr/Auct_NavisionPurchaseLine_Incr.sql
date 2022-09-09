
      
  
    delete from "BJAC_DW_PROD"."stg"."Auct_NavisionPurchaseLine_Incr"
    where (dbt_scd_id) in (
        select (dbt_scd_id)
        from "BJAC_DW_PROD"."stg"."#Auct_NavisionPurchaseLine_Incr__dbt_tmp"
    );
    

    insert into "BJAC_DW_PROD"."stg"."Auct_NavisionPurchaseLine_Incr" ("DocumentType", "AuctionDocumentno", "Lneno", "Type", "No", "Description", "Description2", "Quantity", "DirectUnitcostexclTax", "Status", "StatusMessage", "Globaldim1Code", "Globaldim2Code", "ShortCutdim4Code", "ShortCutdim5Code", "ShortCutdim8Code", "ShortCutdim3Code", "BusinessUnit", "WrotetoNavision", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
    (
        select "DocumentType", "AuctionDocumentno", "Lneno", "Type", "No", "Description", "Description2", "Quantity", "DirectUnitcostexclTax", "Status", "StatusMessage", "Globaldim1Code", "Globaldim2Code", "ShortCutdim4Code", "ShortCutdim5Code", "ShortCutdim8Code", "ShortCutdim3Code", "BusinessUnit", "WrotetoNavision", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
        from "BJAC_DW_PROD"."stg"."#Auct_NavisionPurchaseLine_Incr__dbt_tmp"
    );

  