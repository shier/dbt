create view "stg"."Mer_Employees_FinalView__dbt_tmp" as
    
Select
	[ID],[CreatedDate],[Updateddate],[RemovedDate],[MerchantID],[Name],[NickName],[Email],[Pin],[Role] 
From stg.[Mer_Employees_Incr] 
Where [dbt_valid_to] is null
