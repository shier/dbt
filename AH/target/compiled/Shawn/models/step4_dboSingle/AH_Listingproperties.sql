
Select
	cast([DecimalnativeValue] as decimal(29,14)) [DecimalnativeValue],
	cast([StringnativeValue] as nvarchar(4000)) [StringnativeValue],
	cast([EnumnativeValue] as nvarchar(200)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([CreatedOn] as datetime) [Createdon],
	cast([UpdatedOn] as datetime) [Updatedon],
	cast([DeletedOn] as datetime) [Deletedon],
	cast([DateTimenativeValue] as datetime) [DateTimenativeValue],
	cast([BoolnativeValue] as bit) [BoolnativeValue],
	cast([ID] as int) [ID],
	cast([IntnativeValue] as int) [IntnativeValue],
	cast([ListingID] as int) [ListingID],
	cast([CustomFieldID] as int) [CustomFieldID] 
From stg.[AH_Listingproperties_FinalView]