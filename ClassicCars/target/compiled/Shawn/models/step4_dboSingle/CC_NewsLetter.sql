
Select
	cast([IsActive] as bit) [IsActive],
	cast([Email] as nvarchar(320)) [Email],
	cast([ID] as int) [ID],
	cast([CreateDate] as datetime) [Created],
	cast([ModifyDate] as datetime) [ModifiedDate] 
From stg.[CC_NewsLetter_FinalView]