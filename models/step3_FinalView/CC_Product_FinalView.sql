{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Description],[DisplayDescription],[Price],[IsActive],[CreateDate],[ModifyDate] 
From stg.[CC_Product_Incr] 
Where [dbt_valid_to] is null