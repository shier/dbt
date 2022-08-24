{{ config(materialized='view',schema='stg')}}
Select
	[DRIVERINFORMATIONID] [DriverInFormationID],
	[CONSIGNMENTID] [ConsignmentID],
	[TENTLOCATIONID] [TentLocationID],
	cast([TENTSPACENUMBER] as nvarchar(4000)) [TentSpaceNumber],
	[DELIVERYCARRIERID] [DeLiveryCarrierID],
	cast([DELIVERYCARRIEROTHER] as nvarchar(4000)) [DeLiveryCarrierOther],
	[CHECKEDINUSERSID] [CheckedInUsersID],
	cast([SPAREPARTS] as nvarchar(4000)) [SpareParts],
	cast([VINLOCATION] as nvarchar(4000)) [VINLocation],
	[CHECKEDOUTUSERSID] [CheckedOutUsersID],
	[SHIPPEDCARRIERID] [ShippedCarrierID],
	cast([SHIPPEDCARRIEROTHER] as nvarchar(4000)) [ShippedCarrierOther],
	cast([CHECKEDOUTNAME] as nvarchar(4000)) [CheckedOutName],
	cast([BIDDERNUMBER] as nvarchar(4000)) [BidderNumber],
	cast([LICENSENUMBER] as nvarchar(4000)) [LicenseNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_DriverInFormation_Raw]
