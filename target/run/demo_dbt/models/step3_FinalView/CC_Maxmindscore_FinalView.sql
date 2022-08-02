create view "stg"."CC_Maxmindscore_FinalView__dbt_tmp" as
    
Select
	[ID],[IsActive],[Minfraudscore],[CreateDate],[ModifyDate],[PaymentID] 
From stg.[CC_Maxmindscore_Incr] 
Where [dbt_valid_to] is null
