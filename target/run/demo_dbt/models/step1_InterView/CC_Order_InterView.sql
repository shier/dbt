create view "stg"."CC_Order_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[IsActive] [IsActive],
	[UserId] [UserID],
	[PaymentId] [PaymentID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate]
From stg.[CC_Order_Raw]
