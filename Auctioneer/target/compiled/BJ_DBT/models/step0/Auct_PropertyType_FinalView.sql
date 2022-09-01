
Select
	[PropertyTypeID],[Name],[Key_C] as [Key],[Active] 
From stg.[Auct_PropertyType_Incr] 
Where [dbt_valid_to] is null