
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(VehicleTypeID as varchar), Cast(CountryID as varchar), Cast(CategoryID as varchar), Cast(IsActive as varchar), Make, Model, Makeplural, Modelplural, RelatedModelslugs)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_MakeModel_Inter]
	)
Select * From hashData
