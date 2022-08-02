{{ config(materialized='view',schema='stg')}}
Select
	cast([LOCATION] as nvarchar(4000)) [Location],
	cast([CUSTOMER_NO] as nvarchar(4000)) [Customer_No],
	cast([MERCHANT_ID] as nvarchar(4000)) [Merchant_ID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([CUSTOMER_TYPE] as nvarchar(4000)) [Customer_Type],
	cast([SHIP_GL_NO] as nvarchar(4000)) [Ship_Gl_No],
	cast([TAX_STATE] as nvarchar(4000)) [Tax_State],
	cast([TAX_GL_NO] as nvarchar(4000)) [Tax_Gl_No],
	cast([DISCOUNT_GL_NO] as nvarchar(4000)) [Discount_Gl_No],
	[ACTIVE] [Active]
From stg.[Mer_NavCustomerMap_Raw]
