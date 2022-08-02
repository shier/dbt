{{ config(materialized='view',schema='stg')}}
Select
	cast([ID] as nvarchar(4000)) [ID],
	[Created] [Created],
	cast([QueryString] as nvarchar(4000)) [QueryString],
	cast([Login] as nvarchar(4000)) [Login]
From stg.[Auct_ReportLogging_Raw]
