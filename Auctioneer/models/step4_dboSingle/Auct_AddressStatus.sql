{{ config(materialized='table',schema='dbo')}}
Select
	cast([AddressStatusID] as int) [ADDRESSSTATUSID],
	cast([Name] as varchar(64)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AddressStatus_FinalView]