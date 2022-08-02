{{ config(materialized='view',schema='stg')}}
Select
	cast([MerchantId] as nvarchar(4000)) [MerchantID],
	cast([Token] as nvarchar(4000)) [Token],
	[CreatedDate] [CreatedDate],
	[LastLoadedDate] [LastloadedDate]
From stg.[Mer_CloverMerchant_Raw]
