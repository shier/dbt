{{ config(materialized='table',schema='dbo')}}
Select
	cast([RequestTypeID] as int) [RequestTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_RequestType_FinalView]