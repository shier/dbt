{{ config(materialized='view',schema='stg')}}
Select
	[DRIVERID] [DriverID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created]
From stg.[Auct_Driver_Raw]
