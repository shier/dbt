{{ config(materialized='table',schema='dbo')}}
Select
	cast([Location] as nvarchar(4000)) [Location],
	cast([Customer_No] as nvarchar(4000)) [Customer_No],
	cast([Merchant_ID] as nvarchar(4000)) [Merchant_ID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Customer_Type] as nvarchar(4000)) [Customer_Type],
	cast([Ship_Gl_No] as nvarchar(4000)) [Ship_Gl_No],
	cast([Tax_State] as nvarchar(4000)) [Tax_State],
	cast([Tax_Gl_No] as nvarchar(4000)) [Tax_Gl_No],
	cast([Discount_Gl_No] as nvarchar(4000)) [Discount_Gl_No],
	cast([Active] as bit) [Active] 
From stg.[Mer_NavCustomerMap_FinalView]