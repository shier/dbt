
Select
	cast(RECIPIENTNAME as nvarchar(4000)) RecipientName,
	cast(DESCRIPTION as nvarchar(4000)) Description,
	cast(PROPERTYSPACE as nvarchar(4000)) PropertySpace,
	cast(CHANGEDFIELDS as nvarchar(4000)) ChangedFields,
	PROPERTYTRANSACTIONID PropertyTransactionID,
	PROPERTYID PropertyID,
	PROPERTYSTATUSID PropertyStatusID,
	USERID UserID,
	PROPERTYTYPEKEY PropertyTypeKey,
	CONSIGNMENTID ConsignmentID,
	TRANSACTIONTIME TransactionTime
From Auct_PropertyTransaction_Raw