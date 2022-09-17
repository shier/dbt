
Select
	cast([IsActive] as bit) [IsActive],
	cast([Minfraudscore] as float) [MinFraudScore],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([ID] as int) [Id],
	cast([PaymentID] as int) [PaymentId] 
From stg.[CC_Maxmindscore_FinalView]