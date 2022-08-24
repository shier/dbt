create view "stg"."Auct_PaymentOverride_InterView__dbt_tmp" as
    
Select
	[PAYMENTOVERRIDE_ID] [PaymentOverride_ID],
	[CONSIGNMENTID] [ConsignmentID],
	[APPROVERUSERID] [ApproverUserID],
	[REQUESTUSERID] [RequestUserID],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[CREATED] [Created]
From stg.[Auct_PaymentOverride_Raw]
