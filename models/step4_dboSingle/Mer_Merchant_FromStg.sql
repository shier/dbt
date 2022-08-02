{{ config(materialized='table',schema='dbo')}}
Select
	cast([MerchantID] as varchar(100)) [MerchantID],
	cast([CreatedDate] as datetime) [Created],
	cast([LastloadedDate] as datetime) [LastLoadedDate],
	cast([Token] as varchar(100)) [Token],
	cast([Description] as varchar(8000)) [Description] 
From stg.[Mer_Merchant_FinalView]