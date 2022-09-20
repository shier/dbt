
Select
	cast([Description] as nvarchar(4000)) [Description],
	cast([DisplayDescription] as nvarchar(4000)) [DisplayDescription],
	cast([Price] as numeric(19,4)) [Price],
	cast([IsActive] as bit) [IsActive],
	cast([ID] as int) [Id],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate] 
From stg.[CC_Product_FinalView]