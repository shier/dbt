create view "stg"."CC_SeatMaterial_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_SeatMaterial_Incr] 
Where [dbt_valid_to] is null
