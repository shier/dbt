
Select
	cast([StringnativeValue] as nvarchar(4000)) [StringnativeValue],
	cast([EnumnativeValue] as nvarchar(4000)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([DecimalnativeValue] as numeric(19,4)) [DecimalnativeValue],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DateTimenativeValue] as datetime) [DateTimenativeValue],
	cast([BoolnativeValue] as bit) [BoolnativeValue],
	cast([ID] as int) [ID],
	cast([IntnativeValue] as int) [IntnativeValue],
	cast([AuctionEventID] as int) [AuctionEventID],
	cast([CustomFieldID] as int) [CustomFieldID] 
From stg.[AH_Eventproperties_FinalView]