{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConnectTypeID] as int) [ConnectTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ConnectType_FinalView]