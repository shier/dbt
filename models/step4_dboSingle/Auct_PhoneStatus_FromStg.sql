{{ config(materialized='table',schema='dbo')}}
Select
	cast([PhoneStatusID] as int) [PhoneStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_PhoneStatus_FinalView]