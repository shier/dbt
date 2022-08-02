
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AuctionID as varchar), Cast(Status as varchar), Cast(EntryNumber as varchar), Cast(Amount as varchar), Cast(CreditAMT as varchar), Cast(DebitAMT as varchar), Cast(PostingDate as varchar), Cast(Created as varchar), Hidden, CustvEndID, DocNumber, BankAcctno, Description, ProjectCode, Import)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NavPull_Inter]
	)
Select * From hashData
