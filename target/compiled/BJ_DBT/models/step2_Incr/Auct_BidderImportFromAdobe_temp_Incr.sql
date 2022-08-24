
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([Created_Date] as varchar), [Agreement_Status], [Recipient_1_Name], [Recipient_1_Email], [Recipient_1_Role])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BidderImportFromAdobe_temp_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_BidderImportFromAdobe_temp_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
