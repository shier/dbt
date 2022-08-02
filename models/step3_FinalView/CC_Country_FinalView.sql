{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CountryCode],[Name],[CurrencyCode],[CurrencynumCode],[CountryNameslug],[DisplayOrder],[CreateDate],[ModifyDate],[IsActive] 
From stg.[CC_Country_Incr] 
Where [dbt_valid_to] is null