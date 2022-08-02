
Select
	[ID],[CreateDate],[ModifyDate],[CountryID],[IsActive],[StateCode],[Name],[CountryCode],[StateNameslug] 
From stg.[CC_States_Incr] 
Where [dbt_valid_to] is null