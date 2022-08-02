{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConnectID] as int) [ConnectID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([UsersID] as int) [UsersID],
	cast([ConfigID] as int) [ConfigID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ConnectAssignment_FinalView]