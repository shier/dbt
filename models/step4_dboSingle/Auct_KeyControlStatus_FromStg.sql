{{ config(materialized='table',schema='dbo')}}
Select
	cast([KeyControlStatusID] as int) [KeyControlStatusID],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_KeyControlStatus_FinalView]