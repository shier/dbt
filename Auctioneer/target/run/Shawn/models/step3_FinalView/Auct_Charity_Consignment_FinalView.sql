create view "stg"."Auct_Charity_Consignment_FinalView__dbt_tmp" as
    
Select
	[ConsignmentID],[CharityID],[Active] 
From stg.[Auct_Charity_Consignment_Incr] 
Where [dbt_valid_to] is null
