{{ config(materialized='view',schema='stg')}}
Select
	[Order_ID],[Customer_No],[Document_No],[Ship_Gl_No],[Tax_State],[Tax_Gl_No],[Discount_Gl_No],[Discount_Type],[Employee],[Terminal],[Payment_Method],[Bill_To_State],[Ship_To_State],[Order_Line_ID],[Merchant_ID],[Refund_ID],[Merchant],[Customer],[SKU],[Is_Revenue],[Price],[Discount],[Tax_Amount],[Shipping_Amount],[Order_Date],[Ship_Date],[Refund_Date],[Qty],[Discount_Percent] 
From [Mer_OrderRefunds_Incr]