{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreatedDate],[Updateddate],[RemovedDate],[MerchantID],[Name],[NickName],[Email],[Pin],[Role] 
From stg.[Mer_Employees_Incr] 
Where [dbt_valid_to] is null