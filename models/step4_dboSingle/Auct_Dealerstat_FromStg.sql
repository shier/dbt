{{ config(materialized='table',schema='dbo')}}
Select
	cast([DealerstatID] as int) [DealerStatID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Dealerstat_FinalView]