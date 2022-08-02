
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(ItemID as varchar), Cast(UpdateEventID as varchar), Cast(CustomerAccountID as varchar), Cast(AuctionID as varchar), Cast(AutomobiliaTypeID as varchar), Cast(AutomobiliaConditionID as varchar), Description, Comments, Cast(LotNumber as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Automobilia_Inter]
	)
Select * From hashData
