{{ config(materialized='table',schema='dbo')}}
Select
	cast([ItemStatusID] as int) [ItemStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ItemStatus_FinalView]