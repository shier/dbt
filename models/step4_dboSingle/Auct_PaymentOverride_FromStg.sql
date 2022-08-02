{{ config(materialized='table',schema='dbo')}}
Select
	cast([PaymentOverride_ID] as int) [PaymentOverride_id],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([ApproverUserID] as int) [ApproverUserID],
	cast([RequestUserID] as int) [RequestUserID],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Created] as datetime) [Created] 
From stg.[Auct_PaymentOverride_FinalView]