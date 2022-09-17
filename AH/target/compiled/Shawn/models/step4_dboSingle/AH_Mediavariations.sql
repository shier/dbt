
Select
	cast([CreatedOn] as datetime) [Created_RWXMediaVariations],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXMediaVariations],
	cast([DeletedOn] as datetime) [DeletedDate_RWXMediaVariations],
	cast([ID] as int) [ID],
	cast([MediaassetID] as int) [MediaAssetID_RWX_MediaVariations],
	cast([MediaID] as int) [MediaID],
	cast([Name] as nvarchar(500)) [Name_RWXMediaVariations] 
From stg.[AH_Mediavariations_FinalView]