create view "stg"."Auct_RegisteredOnlineBits_FinalView__dbt_tmp" as
    
Select
	[RegisteredOnlineBit],[Name] 
From stg.[Auct_RegisteredOnlineBits_Incr] 
Where [dbt_valid_to] is null
