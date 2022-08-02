{{ config(materialized='table',schema='dbo')}}
Select
	cast([AutomobiliaTypeID] as int) [AutomobiliaTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_AutomobiliaType_FinalView]