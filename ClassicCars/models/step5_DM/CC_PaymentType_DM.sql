{{ config(materialized='table',schema='dbo')}}

SELECT
	[Id] AS [PaymentType_Skey],
	[Description]
FROM [stg].[CC_PaymentType_FinalView]
