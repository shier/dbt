{{ config(materialized='table',schema='dbo')}}
Select
	cast([PropertyID] as int) [PropertyID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([PropertyTypeKey] as int) [PropertyTypeKey],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Created] as datetime) [Created],
	cast([PropertySpace] as nvarchar(4000)) [PropertySpace],
	cast([CurrentPropertyTransactionID] as int) [CurrentPropertyTransactionID],
	cast([GUIDStamp] as nvarchar(4000)) [GUIDStamp],
	cast([Active] as nvarchar(4000)) [Active],
	cast([AuctionID] as int) [AuctionID] 
From stg.[Auct_Property_FinalView]