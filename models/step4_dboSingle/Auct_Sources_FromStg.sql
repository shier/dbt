{{ config(materialized='table',schema='dbo')}}
Select
	cast([SourceID] as int) [SourceID],
	cast([WebActive] as bit) [WebActive],
	cast([SourceName] as nvarchar(4000)) [SourceName],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Active] as nvarchar(4000)) [Active],
	cast([DisplayOrder] as int) [DisplayOrder] 
From stg.[Auct_Sources_FinalView]