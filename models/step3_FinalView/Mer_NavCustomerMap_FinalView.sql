{{ config(materialized='view',schema='stg')}}
Select
	[Location],[Customer_No],[Merchant_ID],[Name],[Customer_Type],[Ship_Gl_No],[Tax_State],[Tax_Gl_No],[Discount_Gl_No],[Active] 
From [Mer_NavCustomerMap_Incr]