{{ config(materialized='table',schema='dbo')}}
Select
	cast([PropertyStatusID] as int) [PropertyStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as bit) [Active] 
From stg.[Auct_PropertyStatus_FinalView]