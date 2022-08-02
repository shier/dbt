
Select
	ITEMTYPEID ItemTypeID,
	ITEMSTATUSID ItemStatusID,
	CONTACTID ContactID,
	UPDATEEVENTID UpdateEventID,
	ITEMTAXTYPEID ItemTaxTypeID,
	ITEMID ItemID,
	CREATED Created,
	ESTIMATEDVALUE EstimatedValue,
	cast(DESCR as nvarchar(4000)) Descr
From Auct_Item_Raw