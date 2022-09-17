{{ config(materialized='table',schema='dbo')}}
Select
	cast([LatchTaskName] as nvarchar(4000)) [latchTaskName],
	cast([LatchMachineGUID] as nvarchar(4000)) [latchMachineGUID],
	cast([LatchKey] as nvarchar(4000)) [LatchKey],
	cast([LatchLocker] as datetime) [latchLocker] 
From stg.[Auct_Awsdms_Truncation_Safeguard_FinalView]