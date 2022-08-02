{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConsignerApplictionID] as int) [ConsignerApplictionID],
	cast([AuctionID] as nvarchar(4000)) [AuctionID],
	cast([DealerLicenseNumber] as nvarchar(4000)) [DealerLicenseNumber],
	cast([AuctionName] as nvarchar(4000)) [AuctionName],
	cast([DateRange] as nvarchar(4000)) [DateRange],
	cast([FullStateName] as nvarchar(4000)) [FullStateName],
	cast([Page1Footer] as nvarchar(4000)) [Page1Footer] 
From stg.[Auct_ConsignerApplication_FinalView]