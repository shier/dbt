create view "stg"."Mer_Snap_Consignment_InterView__dbt_tmp" as
    
Select
	[CONSIGNMENTID] [ConsignmentID],
	[AUCTIONID] [AuctionID],
	[REVIEWSTATEID] [ReviewStateID],
	[REVIEWSTATEDATE] [ReviewStateDate],
	[MODIFIEDDATETIME] [ModifiedDateTime],
	cast([REVIEWSTATENAME] as nvarchar(4000)) [ReviewStateName]
From stg.[Mer_Snap_Consignment_Raw]
