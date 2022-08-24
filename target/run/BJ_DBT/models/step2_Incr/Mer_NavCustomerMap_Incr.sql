
      
  

    insert into "BJAC_DW_PROD"."stg"."Mer_NavCustomerMap_Incr" ("hashValue", "effectiveTime", "Location", "Customer_No", "Merchant_ID", "Name", "Customer_Type", "Ship_Gl_No", "Tax_State", "Tax_Gl_No", "Discount_Gl_No", "Active")
    (
        select "hashValue", "effectiveTime", "Location", "Customer_No", "Merchant_ID", "Name", "Customer_Type", "Ship_Gl_No", "Tax_State", "Tax_Gl_No", "Discount_Gl_No", "Active"
        from "BJAC_DW_PROD"."stg"."#Mer_NavCustomerMap_Incr__dbt_tmp"
    );

  