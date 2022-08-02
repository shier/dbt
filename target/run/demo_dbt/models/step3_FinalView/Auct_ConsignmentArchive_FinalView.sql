create view "stg"."Auct_ConsignmentArchive_FinalView__dbt_tmp" as
    
Select
	[ConsignmentArchiveID],[IsOutTakeVehicle],[ReleasedForTransPort],[LotNumber],[ReserveAmount],[CusTestimatedValue],[BJValue],[ConsignmentID],[CustomerAccountID],[ItemID],[ConsignmentStatusID],[AuctionID],[ReserveTypeID],[ShortDescription],[LongDescription],[PhotosReceived],[Showcase],[Created],[UpdateEventID],[CarCard],[Titlein],[OnSite],[CheckedIn],[Completed],[Canceled],[AddressID],[CarInfoID],[OnSpeed],[OnHagerty],[IsCharity],[CreatedUTC],[ModifiedUTC],[EmainventoryID],[EMAEventID],[EMACCEventID],[EmashowEventID],[EmamercEventID],[EmalotID],[MarketingDescription],[AuthorizedWeb],[AuthorizedSocial],[AuthorizedMarketing],[AuthorizedCarList],[LockMarketingDescription],[ReviewStateID],[DisplayStatusID],[AssignedtoUserID],[Priority],[Quality],[RequestedAuctionID],[StockNumber],[CreatedByUserID],[ModifiedByUserID],[ModifiedDateTime],[ModifiedFields],[ConsignmentNotifyBit] 
From stg.[Auct_ConsignmentArchive_Incr] 
Where [dbt_valid_to] is null
