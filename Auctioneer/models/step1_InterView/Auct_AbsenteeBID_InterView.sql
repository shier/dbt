{{ config(materialized='view',schema='stg')}}
Select
	[ABSENTEEBIDID] [AbsenteeBidID],
	[LOTNUMBER] [LotNumber],
	[MAXBID] [MaxBID],
	[AUCTIONBIDDERID] [AuctionBidderID],
	[CONSIGNMENTID] [ConsignmentID],
	[AUCTIONID] [AuctionID],
	cast([CONTACTPHONE1] as nvarchar(4000)) [Contactphone1],
	cast([CONTACTPHONE2] as nvarchar(4000)) [Contactphone2],
	cast([NOTE] as nvarchar(4000)) [Note],
	[ABSENTEETYPEIDBIT] [AbsenteeTypeIDBit]
From stg.[Auct_AbsenteeBID_Raw]
