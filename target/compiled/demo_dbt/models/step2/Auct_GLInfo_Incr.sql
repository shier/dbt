
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Tasks, Category, Deptxx, Cast(Created as varchar), Cast(AccountID as varchar), Cast(Task_ItemType as varchar), Cast(GlCategoryID as varchar), Cast(FeeTypeID as varchar), Cast(Dept as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_GLInfo_Inter]
	)
Select * From hashData
