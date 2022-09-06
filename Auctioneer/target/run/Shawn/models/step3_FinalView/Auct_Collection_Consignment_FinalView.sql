create view "stg"."Auct_Collection_Consignment_FinalView__dbt_tmp" as
    
Select
	[CollectionID],[ConsignmentID],[Active] 
From [Auct_Collection_Consignment_Incr]
