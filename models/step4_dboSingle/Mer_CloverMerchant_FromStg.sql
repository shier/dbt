{{ config(materialized='table',schema='dbo')}}
Select
	cast([MerchantID] as varchar(100)) [MerchantID],
	cast([Token] as varchar(100)) [Token],
	cast([CreatedDate] as datetime) [Created],
	cast([LastloadedDate] as datetime) [LastLoadedDate] 
From stg.[Mer_CloverMerchant_FinalView]