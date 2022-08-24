create view "stg"."Auct_VendorsurCharge_InterView__dbt_tmp" as
    
Select
	[VENDORSURCHARGEID] [VendorsurChargeID],
	[VENDORAUCTIONID] [VendorAuctionID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[SURCHAGECOST] [Surchagecost]
From stg.[Auct_VendorsurCharge_Raw]
