create view "stg"."Auct_ConsignerApplication_FinalView__dbt_tmp" as
    
Select
	[ConsignerApplictionID],[AuctionID],[DealerLicenseNumber],[AuctionName],[DateRange],[FullStateName],[Page1Footer] 
From stg.[Auct_ConsignerApplication_Incr] 
Where [dbt_valid_to] is null
