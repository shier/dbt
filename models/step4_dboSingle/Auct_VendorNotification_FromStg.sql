{{ config(materialized='table',schema='dbo')}}
Select
	cast([VendorNotificationID] as int) [VendorNotificationID],
	cast([VendorID] as int) [VendorID],
	cast([AuctionType] as nvarchar(4000)) [AuctionType],
	cast([ReceiveInfo] as nvarchar(4000)) [ReceiveInfo],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Created] as datetime) [Created] 
From stg.[Auct_VendorNotification_FinalView]