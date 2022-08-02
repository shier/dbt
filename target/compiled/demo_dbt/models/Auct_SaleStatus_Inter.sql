
Select
	UPDATEEVENTID UpdateEventID,
	SALESTATUSID SaleStatusID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name,
	cast(CLASSNAME as nvarchar(4000)) ClassName
From Auct_SaleStatus_Raw