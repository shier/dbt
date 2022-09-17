
Select
	cast([IsActive] as bit) [IsActive],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([PaymentID] as int) [PaymentId],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate] 
From stg.[CC_Order_FinalView]