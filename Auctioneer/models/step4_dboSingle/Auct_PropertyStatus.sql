{{ config(materialized='table',schema='dbo')}}
Select
	cast([PropertyStatusID] as int) [PROPERTYSTATUSID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_PropertyStatus_FinalView]