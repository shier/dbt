
Select
	cast([Processor] as nvarchar(4000)) [Processor],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([ListingTypeID] as int) [ListingTypeId],
	cast([EventID] as int) [EventId] 
From stg.[AH_Feeproperties_FinalView]