
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(UsersID as varchar), Cast(TableID as varchar), Cast(ContactID as varchar), Cast(AuctionID as varchar), Cast(AddressTypeID as varchar), Cast(AddressID as varchar), Cast(Country as varchar), Cast(DealerID as varchar), Cast(AddressstatID as varchar), Cast(DealerstatID as varchar), Cast(ActionTime as varchar), Cast(DealernumExpire as varchar), Cast(DeAlerTaxExpire as varchar), TaxIDNumber, TaxIDsTage, DealerComment, City, StateProvince, PostalCode, Careof, DealerNumber, DealerState, OriginalData, Address1, Address2)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_UpdateEvent_Inter]
	)
Select * From hashData
