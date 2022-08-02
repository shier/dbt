{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([AuctionID] as int) [AuctionID],
	cast([ReviewStateID] as int) [ReviewStateID],
	cast([ReviewStateDate] as date) [ReviewStateDate],
	cast([ModifiedDateTime] as datetime) [ModifiedDateTime],
	cast([ReviewStateName] as nvarchar(4000)) [ReviewStateName] 
From stg.[Mer_Snap_Consignment_FinalView]