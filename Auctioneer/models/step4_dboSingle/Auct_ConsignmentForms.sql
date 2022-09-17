{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConsignmentFormID] as int) [CONSIGNMENTFORMID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([FormName] as nvarchar(4000)) [FORMNAME],
	cast([FormKey] as nvarchar(4000)) [FORMKEY],
	cast([FilePath] as nvarchar(4000)) [FILEPATH],
	cast([SignStartedDateTime] as DATETIME) [SIGNSTARTEDDATETIME],
	cast([SignfinishedDateTime] as DATETIME) [SIGNFINISHEDDATETIME],
	cast([UserID] as int) [USERID] 
From stg.[Auct_ConsignmentForms_FinalView]