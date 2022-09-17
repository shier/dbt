
Select
	cast([IsActive] as bit) [IsActive],
	cast([ID] as int) [ID],
	cast([UserID] as int) [UserID],
	cast([PaymentID] as int) [PaymentID],
	cast([CreateDate] as datetime) [Created_Order],
	cast([ModifyDate] as datetime) [ModifiedDate_Order] 
From stg.[CC_Order_FinalView]