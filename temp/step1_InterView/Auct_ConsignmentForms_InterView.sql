{{ config(materialized='view',schema='stg')}}
Select
	[CONSIGNMENTFORMID] [ConsignmentFormID],
	[CONSIGNMENTID] [ConsignmentID],
	cast([FORMNAME] as nvarchar(4000)) [FormName],
	cast([FORMKEY] as nvarchar(4000)) [FormKey],
	cast([FILEPATH] as nvarchar(4000)) [FilePath],
	[SIGNSTARTEDDATETIME] [SignStartedDateTime],
	[SIGNFINISHEDDATETIME] [SignfinishedDateTime],
	[USERID] [UserID]
From stg.[Auct_ConsignmentForms_Raw]
