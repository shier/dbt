
Select
	cast(DESCRIPTION as nvarchar(4000)) Description,
	PAYMENTOVERRIDE_ID PaymentOverride_ID,
	CONSIGNMENTID ConsignmentID,
	APPROVERUSERID ApproverUserID,
	REQUESTUSERID RequestUserID,
	CREATED Created
From Auct_PaymentOverride_Raw