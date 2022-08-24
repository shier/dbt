
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ContactID] as varchar), Cast([CustomerAccountID] as varchar), [Name], [EmailAddress], [Type], Cast([ContactTypeID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Customers_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."Auct_Customers_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
