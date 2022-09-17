{{ config(materialized='table',schema='dbo')}}
Select
	cast([LotNumber] as numeric(18,1)) [LOTNUMBER],
	cast([MaxBID] as numeric(19,4)) [MAXBID],
	cast([AbsenteeBidID] as int) [ABSENTEEBIDID],
	cast([AuctionBidderID] as int) [AUCTIONBIDDERID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Contactphone1] as nvarchar(4000)) [CONTACTPHONE1],
	cast([Contactphone2] as nvarchar(4000)) [CONTACTPHONE2],
	cast([Note] as nvarchar(4000)) [NOTE],
	cast([AbsenteeTypeIDBit] as int) [ABSENTEETYPEIDBIT] 
From stg.[Auct_AbsenteeBID_FinalView]