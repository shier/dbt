create view "stg"."CC_SavedSearches_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[UserId] [UserID],
	[YearFrom] [YearFrom],
	[YearTo] [Yearto],
	[Distance] [Distance],
	[VehicleTypeId] [VehicleTypeID],
	[AlertModeId] [AlertModeID],
	[AlertFrequencyId] [AlertFrequencyID],
	[IsActive] [IsActive],
	[IncludePrivate] [IncludePrivate],
	[IncludeDealer] [IncludeDealer],
	[IncludeAuction] [IncludeAuction],
	[PriceTo] [Priceto],
	cast([SearchDescription] as nvarchar(4000)) [SearchDescription],
	cast([SavedSearchName] as nvarchar(4000)) [SavedSearchName],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([Country] as nvarchar(4000)) [Country],
	cast([State] as nvarchar(4000)) [State],
	cast([ZipCode] as nvarchar(4000)) [ZipCode],
	[PriceFrom] [PriceFrom]
From stg.[CC_SavedSearches_Raw]
