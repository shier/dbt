{{ config(materialized='table',schema='dbo')}}
Select
	cast([PaymentOverride_ID] as int) [PAYMENTOVERRIDE_ID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([ApproverUserID] as int) [APPROVERUSERID],
	cast([RequestUserID] as int) [REQUESTUSERID],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([Created] as datetime) [CREATED] 
From stg.[Auct_PaymentOverride_FinalView]