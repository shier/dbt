{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConsignmentStatusID] as int) [ConsignmentStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ConsignmentStatus_FinalView]