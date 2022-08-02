create view "stg"."Auct_Charity_FinalView__dbt_tmp" as
    
Select
	[CharityID],[Name],[Description],[Active],[WebSiteURL],[LogoURL] 
From stg.[Auct_Charity_Incr] 
Where [dbt_valid_to] is null
