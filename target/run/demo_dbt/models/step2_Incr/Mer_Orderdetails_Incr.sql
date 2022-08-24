
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Mer_Orderdetails_Incr" ("hashValue", "effectiveTime", "Qty", "Discount_Percent", "Order_Date", "Ship_Date", "Price", "Discount", "Tax_Amount", "Shipping_Amount", "Order_ID", "Is_Revenue", "Ship_To_State", "Ship_Gl_No", "Tax_State", "Tax_Gl_No", "Discount_Gl_No", "Employee", "Terminal", "Payment_Method", "Document_No", "Customer_No", "Bill_To_State", "Merchant_ID", "Merchant", "Customer", "Order_Line_ID", "SKU", "Discount_Type")
    (
        select "hashValue", "effectiveTime", "Qty", "Discount_Percent", "Order_Date", "Ship_Date", "Price", "Discount", "Tax_Amount", "Shipping_Amount", "Order_ID", "Is_Revenue", "Ship_To_State", "Ship_Gl_No", "Tax_State", "Tax_Gl_No", "Discount_Gl_No", "Employee", "Terminal", "Payment_Method", "Document_No", "Customer_No", "Bill_To_State", "Merchant_ID", "Merchant", "Customer", "Order_Line_ID", "SKU", "Discount_Type"
        from "DedicatedSQLpoolBJ"."stg"."#Mer_Orderdetails_Incr__dbt_tmp"
    );

  