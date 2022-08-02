create view "stg"."CC_Maxmindscore_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[IsActive] [IsActive],
	[MinFraudScore] [Minfraudscore],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[PaymentId] [PaymentID]
From stg.[CC_Maxmindscore_Raw]
