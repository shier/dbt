{{ config(materialized='view',schema='stg')}}
Select
	[SPAREPARTSID] [SparePartsID],
	[DRIVERINFORMATIONID] [DriverInFormationID],
	[SPAREPARTSTYPEID] [SparePartsTypeID],
	cast([BARCODEID] as nvarchar(4000)) [BarcodeID],
	cast([PARTSDESCRIPTION] as nvarchar(4000)) [PartsDescription],
	cast([INACTIVE] as nvarchar(4000)) [InActive],
	[INACTIVEUPDATEEVENTID] [InActiveUpdateEventID],
	cast([CHECKOUTTEXT] as nvarchar(4000)) [CheckOutText],
	[CHECKOUTUPDATEEVENTID] [CheckOutUpdateEventID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([SPACENUMBER] as nvarchar(4000)) [SpaceNumber]
From stg.[Auct_SpareParts_Raw]
