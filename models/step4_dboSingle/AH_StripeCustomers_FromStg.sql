{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([SellerID] as int) [SellerID],
	cast([BuyerID] as int) [BuyerID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CustomerID] as nvarchar(4000)) [CustomerID] 
From stg.[AH_StripeCustomers_FinalView]