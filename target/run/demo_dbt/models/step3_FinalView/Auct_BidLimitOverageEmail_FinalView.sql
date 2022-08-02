create view "stg"."Auct_BidLimitOverageEmail_FinalView__dbt_tmp" as
    
Select
	[EmailAddress],[IsActive] 
From stg.[Auct_BidLimitOverageEmail_Incr] 
Where [dbt_valid_to] is null
