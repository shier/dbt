create view "stg"."Auct_KeyControl_FinalView__dbt_tmp" as
    
Select
	[KeyControlID],[Active],[CurrentKeyControlTransactionID],[ConsignmentID] 
From stg.[Auct_KeyControl_Incr] 
Where [dbt_valid_to] is null
