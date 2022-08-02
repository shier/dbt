{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarrierID] as int) [CarrierID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Carrier_FinalView]