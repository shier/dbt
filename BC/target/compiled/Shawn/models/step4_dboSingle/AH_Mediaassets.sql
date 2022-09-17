
Select
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DaTestamp] as datetime) [DateStamp],
	cast([ID] as int) [Id],
	cast([Type] as nvarchar(500)) [Type],
	cast([Reference] as nvarchar(4000)) [Reference],
	cast([Sha1] as nvarchar(4000)) [SHA1] 
From stg.[AH_Mediaassets_FinalView]