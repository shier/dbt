{{ config(materialized='table',schema='dbo')}}
Select
	cast([BuyerID] as int) [BuyerID],
	cast([ContactID] as int) [ContactID],
	cast([CompanyID] as int) [CompanyID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Buyer_FinalView]