create view "stg"."Auct_VendorRef_InterView__dbt_tmp" as
    
Select
	[OLDVENDORID] [OldVendorID],
	[NEWVENDORID] [NewVendorID],
	[VENDORAUCTIONID] [VendorAuctionID]
From stg.[Auct_VendorRef_Raw]
