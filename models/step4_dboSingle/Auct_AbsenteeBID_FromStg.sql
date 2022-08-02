{{ config(materialized='table',schema='dbo')}}
Select
	cast([AbsenteeBidID] as int) [AbSenteebIDid],
	cast([LotNumber] as numeric(18,1)) [LotNumber],
	cast([MaxBID] as numeric(19,4)) [MaxbID],
	cast([AuctionBidderID] as int) [AuctionbIDderid],
	cast([ConsignmentID] as int) [ConSignmentID],
	cast([AuctionID] as int) [AuctionID],
	cast([Contactphone1] as nvarchar(4000)) [ContactPhone1],
	cast([Contactphone2] as nvarchar(4000)) [ContactPhone2],
	cast([Note] as nvarchar(4000)) [Note],
	cast([AbsenteeTypeIDBit] as int) [AbSenteeTypeIDBIT] 
From stg.[Auct_AbsenteeBID_FinalView]