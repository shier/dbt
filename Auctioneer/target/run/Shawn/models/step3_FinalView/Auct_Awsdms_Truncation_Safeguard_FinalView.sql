create view "stg"."Auct_Awsdms_Truncation_Safeguard_FinalView__dbt_tmp" as
    
Select
	[LatchTaskName],[LatchMachineGUID],[LatchKey],[LatchLocker] 
From [Auct_Awsdms_Truncation_Safeguard_Incr] 
Where [dbt_valid_to] is null
