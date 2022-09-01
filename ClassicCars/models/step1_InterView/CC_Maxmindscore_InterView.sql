{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[IsActive] [IsActive],
	[MinFraudScore] [Minfraudscore],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[PaymentId] [PaymentID]
From stg.[CC_Maxmindscore_Raw]
