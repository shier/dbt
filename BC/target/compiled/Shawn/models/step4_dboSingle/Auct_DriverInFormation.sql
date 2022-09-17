
Select
	cast([DriverInFormationID] as int) [DRIVERINFORMATIONID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([TentLocationID] as int) [TENTLOCATIONID],
	cast([TentSpaceNumber] as nvarchar(4000)) [TENTSPACENUMBER],
	cast([DeLiveryCarrierID] as int) [DELIVERYCARRIERID],
	cast([DeLiveryCarrierOther] as nvarchar(4000)) [DELIVERYCARRIEROTHER],
	cast([CheckedInUsersID] as int) [CHECKEDINUSERSID],
	cast([SpareParts] as nvarchar(4000)) [SPAREPARTS],
	cast([VINLocation] as nvarchar(4000)) [VINLOCATION],
	cast([CheckedOutUsersID] as int) [CHECKEDOUTUSERSID],
	cast([ShippedCarrierID] as int) [SHIPPEDCARRIERID],
	cast([ShippedCarrierOther] as nvarchar(4000)) [SHIPPEDCARRIEROTHER],
	cast([CheckedOutName] as nvarchar(4000)) [CHECKEDOUTNAME],
	cast([BidderNumber] as nvarchar(4000)) [BIDDERNUMBER],
	cast([LicenseNumber] as nvarchar(4000)) [LICENSENUMBER],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_DriverInFormation_FinalView]