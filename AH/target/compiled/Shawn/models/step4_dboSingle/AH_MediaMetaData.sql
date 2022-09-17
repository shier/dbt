
Select
	cast([Name] as nvarchar(500)) [Name_RWXMediaMetaData],
	cast([Value] as nvarchar(4000)) [Value],
	cast([ID] as int) [MediaMetaDataID_RWXMediaMetaData],
	cast([CreatedOn] as datetime) [Created_RWXMediaMetaData],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXMediaMetaData],
	cast([DeletedOn] as datetime) [DeletedDate_RWXMediaMetaData] 
From stg.[AH_MediaMetaData_FinalView]