{{ config(materialized='table',schema='dbo')}}
Select
	cast([VendorNotificationID] as int) [VENDORNOTIFICATIONID],
	cast([VendorID] as int) [VENDORID],
	cast([AuctionType] as nvarchar(4000)) [AUCTIONTYPE],
	cast([ReceiveInfo] as nvarchar(4000)) [RECEIVEINFO],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Created] as datetime) [CREATED] 
From stg.[Auct_VendorNotification_FinalView]