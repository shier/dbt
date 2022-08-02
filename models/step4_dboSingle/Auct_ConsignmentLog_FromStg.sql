{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConsignmentLogID] as int) [ConsignmentLogID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([NoteType] as nvarchar(4000)) [NoteType],
	cast([Note] as nvarchar(4000)) [Note],
	cast([UsersID] as int) [UsersID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([CustomerAccountID] as int) [CustomerAccountID] 
From stg.[Auct_ConsignmentLog_FinalView]