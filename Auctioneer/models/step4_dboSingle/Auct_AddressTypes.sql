{{ config(materialized='table',schema='dbo')}}
Select
	cast([AddressTypeID] as int) [ADDRESSTYPEID],
	cast([Name] as varchar(64)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Icon] as nvarchar(256)) [ICON],
	cast([ProcessorName] as nvarchar(1024)) [PROCESSORNAME],
	cast([Level] as int) [LEVEL] 
From stg.[Auct_AddressTypes_FinalView]