
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(EndDate as varchar), Cast(ListingID as varchar), Cast(PaymentTypeID as varchar), Cast(IsActive as varchar), SalesForceOpportunityID)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Showcase_Inter]
	)
Select * From hashData
