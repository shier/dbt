{{ config(materialized='view',schema='stg')}}
Select
	[LatchTaskName],[LatchMachineGUID],[LatchKey],[LatchLocker] 
From [Auct_Awsdms_Truncation_Safeguard_Incr]