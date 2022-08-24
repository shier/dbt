{{ config(materialized='view',schema='stg')}}
Select
	cast([latchTaskName] as nvarchar(4000)) [LatchTaskName],
	cast([latchMachineGUID] as nvarchar(4000)) [LatchMachineGUID],
	cast([LatchKey] as nvarchar(4000)) [LatchKey],
	[latchLocker] [LatchLocker]
From stg.[Auct_Awsdms_Truncation_Safeguard_Raw]
