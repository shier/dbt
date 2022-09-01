{{ config(materialized='table',schema='dbo')}}

SELECT
	[Id] as [PaymentType_Skey],
	[Description]
FROM [stg].[CC_PaymentType_FinalView]
