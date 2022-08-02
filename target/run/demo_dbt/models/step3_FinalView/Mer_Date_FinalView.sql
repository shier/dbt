create view "stg"."Mer_Date_FinalView__dbt_tmp" as
    
Select
	[DateID],[Date] 
From stg.[Mer_Date_Incr] 
Where [dbt_valid_to] is null
