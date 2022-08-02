{{ config(materialized='table',schema='dbo')}}
Select
	cast([LatchTaskName] as nvarchar(4000)) [LatchTaskName],
	cast([LatchMachineGUID] as nvarchar(4000)) [LatchMachineGUID],
	cast([LatchKey] as nvarchar(4000)) [LatchKey],
	cast([LatchLocker] as datetime) [LatchLocker] 
From stg.[Auct_Awsdms_Truncation_Safeguard_FinalView]