
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(LotNumber as varchar), Cast(FeeAmount as varchar), Cast(PaymentAMT as varchar), Cast(ContactID as varchar), Cast(AuctionID as varchar), Cast(DocumentType as varchar), Cast(Created as varchar), AcctType, FeeName, PaymentType, SystemNote, UserNote, UserName, Dept, VContactID)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AcctArchive_Inter]
	)
Select * From hashData
