create view "stg"."Auct_DynamicProperty_FinalView__dbt_tmp" as
    
Select
	[DynamicPropertyID],[Name],[DisplayName],[DataClass] 
From stg.[Auct_DynamicProperty_Incr] 
Where [dbt_valid_to] is null
