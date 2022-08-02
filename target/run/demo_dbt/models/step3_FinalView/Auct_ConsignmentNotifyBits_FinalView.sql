create view "stg"."Auct_ConsignmentNotifyBits_FinalView__dbt_tmp" as
    
Select
	[ConsignmentNotifyBit],[Name],[Active] 
From stg.[Auct_ConsignmentNotifyBits_Incr] 
Where [dbt_valid_to] is null
