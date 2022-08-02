{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as nvarchar(4000)) [ID],
	cast([Created] as datetime) [Created],
	cast([QueryString] as nvarchar(4000)) [QueryString],
	cast([Login] as nvarchar(4000)) [Login] 
From stg.[Auct_ReportLogging_FinalView]