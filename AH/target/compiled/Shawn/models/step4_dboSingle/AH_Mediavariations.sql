
Select
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([MediaassetID] as int) [MediaAssetId],
	cast([MediaID] as int) [MediaId],
	cast([Name] as nvarchar(500)) [Name] 
From stg.[AH_Mediavariations_FinalView]