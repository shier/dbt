create view "stg"."Auct_PackageCarrier_FinalView__dbt_tmp" as
    
Select
	[PackageCarrierID],[Name],[TrackingURL],[Active] 
From stg.[Auct_PackageCarrier_Incr] 
Where [dbt_valid_to] is null
