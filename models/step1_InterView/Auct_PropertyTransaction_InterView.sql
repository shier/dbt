{{ config(materialized='view',schema='stg')}}
Select
	[PROPERTYTRANSACTIONID] [PropertyTransactionID],
	[PROPERTYID] [PropertyID],
	[PROPERTYSTATUSID] [PropertyStatusID],
	cast([RECIPIENTNAME] as nvarchar(4000)) [RecipientName],
	[TRANSACTIONTIME] [TransactionTime],
	[USERID] [UserID],
	[PROPERTYTYPEKEY] [PropertyTypeKey],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	cast([PROPERTYSPACE] as nvarchar(4000)) [PropertySpace],
	cast([CHANGEDFIELDS] as nvarchar(4000)) [ChangedFields],
	[CONSIGNMENTID] [ConsignmentID]
From stg.[Auct_PropertyTransaction_Raw]
