{{ config(materialized='table',schema='dbo')}}
Select
	cast([DriverInFormationID] as int) [DriverInFormationID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([TentLocationID] as int) [TentLocationID],
	cast([TentSpaceNumber] as nvarchar(4000)) [TentSpaceNumber],
	cast([DeLiveryCarrierID] as int) [DeliveryCarrierID],
	cast([DeLiveryCarrierOther] as nvarchar(4000)) [DeliveryCarrierOther],
	cast([CheckedInUsersID] as int) [CheckedInUsersID],
	cast([SpareParts] as nvarchar(4000)) [Spareparts],
	cast([VINLocation] as nvarchar(4000)) [VINLocation],
	cast([CheckedOutUsersID] as int) [CheckedOutUsersID],
	cast([ShippedCarrierID] as int) [ShippedCarrierID],
	cast([ShippedCarrierOther] as nvarchar(4000)) [ShippedCarrierOther],
	cast([CheckedOutName] as nvarchar(4000)) [CheckedOutName],
	cast([BidderNumber] as nvarchar(4000)) [BidderNumber],
	cast([LicenseNumber] as nvarchar(4000)) [LicenseNumber],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_DriverInFormation_FinalView]