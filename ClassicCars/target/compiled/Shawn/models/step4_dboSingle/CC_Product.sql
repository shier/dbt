
Select
	cast([Description] as nvarchar(4000)) [Description],
	cast([DisplayDescription] as nvarchar(4000)) [DisplayDescription],
	cast([Price] as numeric(19,4)) [Price],
	cast([IsActive] as bit) [IsActive_Product],
	cast([ID] as int) [ProductID_Product],
	cast([CreateDate] as datetime) [Created_Product],
	cast([ModifyDate] as datetime) [ModifiedDate_Product] 
From stg.[CC_Product_FinalView]