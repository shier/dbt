
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([Location], [Customer_No], [Merchant_ID], [Name], [Customer_Type], [Ship_Gl_No], [Tax_State], [Tax_Gl_No], [Discount_Gl_No], Cast([Active] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_NavCustomerMap_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Mer_NavCustomerMap_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
