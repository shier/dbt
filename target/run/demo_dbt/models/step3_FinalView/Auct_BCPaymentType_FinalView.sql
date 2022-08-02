create view "stg"."Auct_BCPaymentType_FinalView__dbt_tmp" as
    
Select
	[BCPaymentTypeID],[Name] 
From stg.[Auct_BCPaymentType_Incr] 
Where [dbt_valid_to] is null
