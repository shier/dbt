
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([Qty] as varchar), Cast([Discount_Percent] as varchar), Cast([Order_Date] as varchar), Cast([Ship_Date] as varchar), Cast([Price] as varchar), Cast([Discount] as varchar), Cast([Tax_Amount] as varchar), Cast([Shipping_Amount] as varchar), [Order_ID], Cast([Is_Revenue] as varchar), [Ship_To_State], [Ship_Gl_No], [Tax_State], [Tax_Gl_No], [Discount_Gl_No], [Employee], [Terminal], [Payment_Method], [Document_No], [Customer_No], [Bill_To_State], [Merchant_ID], [Merchant], [Customer], [Order_Line_ID], [SKU], [Discount_Type])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_Orderdetails_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Mer_Orderdetails_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
