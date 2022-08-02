
Select
	cast([Name] as nvarchar(4000)) [Name],
	cast([Value] as nvarchar(4000)) [Value],
	cast([EditMode] as nvarchar(4000)) [EditMode],
	cast([Type] as nvarchar(4000)) [Type],
	cast([Context] as nvarchar(4000)) [ConText],
	[UpdatedOn] [Updatedon],
	[DeletedOn] [Deletedon],
	[CreatedOn] [Createdon],
	[Id] [ID]
From stg.[AH_Attributes_Raw]