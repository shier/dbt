{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[IsActive] [IsActive],
	[UserId] [UserID],
	[PaymentId] [PaymentID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate]
From stg.[CC_Order_Raw]
