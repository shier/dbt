create view "stg"."Auct_StateProvince_FinalView__dbt_tmp" as
    
Select
	[Abbreviation],[FullName],[CountryID],[Active] 
From [Auct_StateProvince_Incr] 
Where [dbt_valid_to] is null
