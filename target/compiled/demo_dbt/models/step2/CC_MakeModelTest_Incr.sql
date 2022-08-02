
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(VehicleTypeID as varchar), Cast(CountryID as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(IsActive as varchar), Modelplural, Makeslug, Modelslug, RelatedModelslugs, Make, Model, Makeplural)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_MakeModelTest_Inter]
	)
Select * From hashData
