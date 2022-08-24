
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([First_Name], [Last_Name], [Email], [Phone], [Address], [Address2], [City], [State], [ZipCode], [Country], [Optin], [AuctionID], [Source])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_2018PurchaserList_tim_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_2018PurchaserList_tim_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
