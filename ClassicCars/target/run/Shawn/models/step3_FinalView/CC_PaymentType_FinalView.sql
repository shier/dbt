create view "stg"."CC_PaymentType_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_PaymentType_Incr] 
Where [dbt_valid_to] is null
