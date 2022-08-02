{{ config(materialized='table',schema='dbo')}}
Select
	cast([SparePartsID] as int) [SparepartsID],
	cast([DriverInFormationID] as int) [DriverInFormationID],
	cast([SparePartsTypeID] as int) [SparepartsTypeID],
	cast([BarcodeID] as nvarchar(4000)) [BarcodeID],
	cast([PartsDescription] as nvarchar(4000)) [PartsDescription],
	cast([InActive] as nvarchar(4000)) [InActive],
	cast([InActiveUpdateEventID] as int) [InActiveUpdateEventID],
	cast([CheckOutText] as nvarchar(4000)) [CheckOutText],
	cast([CheckOutUpdateEventID] as int) [CheckOutUpdateEventID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([SpaceNumber] as nvarchar(4000)) [SpaceNumber] 
From stg.[Auct_SpareParts_FinalView]