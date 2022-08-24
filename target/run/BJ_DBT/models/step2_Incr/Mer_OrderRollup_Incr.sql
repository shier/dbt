
      
  

    insert into "BJAC_DW_PROD"."stg"."Mer_OrderRollup_Incr" ("hashValue", "effectiveTime", "Qty", "Cnt", "In_Nav", "Document_Type", "In_Nav_Date", "Price", "Ship_Amount", "Tax_Amount", "Discount", "Merchant_ID", "Customer_No", "SKU", "Date_Nav", "Document_No", "Ship_Gl_No", "Tax_State", "Tax_Gl_No", "Discount_Gl_No")
    (
        select "hashValue", "effectiveTime", "Qty", "Cnt", "In_Nav", "Document_Type", "In_Nav_Date", "Price", "Ship_Amount", "Tax_Amount", "Discount", "Merchant_ID", "Customer_No", "SKU", "Date_Nav", "Document_No", "Ship_Gl_No", "Tax_State", "Tax_Gl_No", "Discount_Gl_No"
        from "BJAC_DW_PROD"."stg"."#Mer_OrderRollup_Incr__dbt_tmp"
    );

  