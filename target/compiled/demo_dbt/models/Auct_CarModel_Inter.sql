
Select
	ACTIVE Active,
	WEBACTIVE WebActive,
	CREATED Created,
	CARMODELID CarModelID,
	CARTYPEID CarTypeID,
	UPDATEEVENTID UpdateEventID,
	cast(NAME as nvarchar(4000)) Name,
	cast(ROWGUID as nvarchar(4000)) RowGUID
From Auct_CarModel_Raw