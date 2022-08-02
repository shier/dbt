
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(IsActive as varchar), Cast(DisplayOrder as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), CountryNameslug, CountryCode, Name, CurrencyCode, CurrencynumCode)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Country_Inter]
	)
Select * From hashData
