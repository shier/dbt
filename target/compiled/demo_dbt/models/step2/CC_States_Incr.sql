
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(CountryID as varchar), Cast(IsActive as varchar), StateCode, Name, CountryCode, StateNameslug)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_States_Inter]
	)
Select * From hashData
