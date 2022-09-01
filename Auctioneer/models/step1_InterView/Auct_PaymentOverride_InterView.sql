{{ config(materialized='view',schema='stg')}}
Select
	[PAYMENTOVERRIDE_ID] [PaymentOverride_ID],
	[CONSIGNMENTID] [ConsignmentID],
	[APPROVERUSERID] [ApproverUserID],
	[REQUESTUSERID] [RequestUserID],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[CREATED] [Created]
From stg.[Auct_PaymentOverride_Raw]
