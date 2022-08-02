{{ config(materialized='table',schema='dbo')}}
Select
	cast([FeePayerID] as int) [FeePayerID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_FeePayer_FinalView]