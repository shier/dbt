create view "stg"."Mer_Merchant_InterView__dbt_tmp" as
    
Select
	cast([MerchantId] as nvarchar(4000)) [MerchantID],
	[CreatedDate] [CreatedDate],
	[LastLoadedDate] [LastloadedDate],
	cast([Token] as nvarchar(4000)) [Token],
	cast([Description] as nvarchar(4000)) [Description]
From stg.[Mer_Merchant_Raw]