
Select
	cast(BARCODEID as nvarchar(4000)) BarcodeID,
	cast(PARTSDESCRIPTION as nvarchar(4000)) PartsDescription,
	cast(INACTIVE as nvarchar(4000)) InActive,
	cast(CHECKOUTTEXT as nvarchar(4000)) CheckOutText,
	cast(SPACENUMBER as nvarchar(4000)) SpaceNumber,
	CREATED Created,
	SPAREPARTSID SparePartsID,
	DRIVERINFORMATIONID DriverInFormationID,
	SPAREPARTSTYPEID SparePartsTypeID,
	INACTIVEUPDATEEVENTID InActiveUpdateEventID,
	CHECKOUTUPDATEEVENTID CheckOutUpdateEventID,
	UPDATEEVENTID UpdateEventID
From Auct_SpareParts_Raw