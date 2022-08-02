{{ config(materialized='table',schema='dbo')}}
Select
	cast([AddressStatusID] as int) [AddressStatusID],
	cast([Name] as varchar(64)) [AddressStatus],
	cast([Created] as datetime) [Created_AddressStatus],
	cast([UpdateEventID] as int) [UpdateEventID_AddressStatus] 
From stg.[Auct_AddressStatus_FinalView]