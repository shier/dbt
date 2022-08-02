create view "stg"."CC_Order_FinalView__dbt_tmp" as
    
Select
	[ID],[IsActive],[UserID],[PaymentID],[CreateDate],[ModifyDate] 
From stg.[CC_Order_Incr] 
Where [dbt_valid_to] is null
