
Select
	cast([IsActive] as bit) [IsActive],
	cast([Minfraudscore] as float) [Minfraudscore],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([ID] as int) [ID],
	cast([PaymentID] as int) [PaymentID] 
From stg.[CC_Maxmindscore_FinalView]