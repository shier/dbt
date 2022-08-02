{{ config(materialized='table',schema='dbo')}}
Select
	cast([ProductServiceTypeID] as int) [ProductServiceTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ProductServiceType_FinalView]