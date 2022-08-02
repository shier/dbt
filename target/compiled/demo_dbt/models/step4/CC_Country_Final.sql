
Select
	[ID],[IsActive],[DisplayOrder],[CreateDate],[ModifyDate],[CountryNameslug],[CountryCode],[Name],[CurrencyCode],[CurrencynumCode] 
From stg.[CC_Country_Incr] 
Where [dbt_valid_to] is null