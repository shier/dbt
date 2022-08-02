
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(IsexcelExport as varchar), Cast(IsSorTable as varchar), Value3Title, Value3Example, DateFromTitle, DateFromExample, DatetoTitle, DatetoExample, DateFromind, Datetoind, Value1Title, Value1Example, Value2Title, Value2Example, Accountind, Auctiondayind, Paymentind, Value1ind, Value2ind, Value3ind, Description, Value4ind, Value4Title, Value4Example, ReportsCategory, ReportsTitle, ReportsFileName, Auctionind)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Reports_Inter]
	)
Select * From hashData
