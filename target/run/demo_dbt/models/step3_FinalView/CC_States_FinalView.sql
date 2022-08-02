create view "stg"."CC_States_FinalView__dbt_tmp" as
    
Select
	[ID],[IsActive],[StateCode],[Name],[CountryCode],[StateNameslug],[CreateDate],[ModifyDate],[CountryID] 
From stg.[CC_States_Incr] 
Where [dbt_valid_to] is null
