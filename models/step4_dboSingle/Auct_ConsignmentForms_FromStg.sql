{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConsignmentFormID] as int) [ConsignmentFormID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([FormName] as nvarchar(4000)) [FormName],
	cast([FormKey] as nvarchar(4000)) [FormKey],
	cast([FilePath] as nvarchar(4000)) [FilePath],
	cast([SignStartedDateTime] as DATETIME) [SignStartedDateTime],
	cast([SignfinishedDateTime] as DATETIME) [SignfinishedDateTime],
	cast([UserID] as int) [UserID] 
From stg.[Auct_ConsignmentForms_FinalView]