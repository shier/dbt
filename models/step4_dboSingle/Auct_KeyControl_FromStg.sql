{{ config(materialized='table',schema='dbo')}}
Select
	cast([KeyControlID] as int) [KeyControlID],
	cast([Active] as bit) [Active],
	cast([CurrentKeyControlTransactionID] as int) [CurrentKeyControlTransActionID],
	cast([ConsignmentID] as int) [ConsignmentID] 
From stg.[Auct_KeyControl_FinalView]