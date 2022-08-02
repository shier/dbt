create view "stg"."Auct_Collection_Consignment_FinalView__dbt_tmp" as
    
Select
	[CollectionID],[ConsignmentID],[Active] 
From stg.[Auct_Collection_Consignment_Incr] 
Where [dbt_valid_to] is null
