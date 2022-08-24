
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([OldVendorID] as varchar), Cast([NewVendorID] as varchar), Cast([VendorAuctionID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_VendorRef_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_VendorRef_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
