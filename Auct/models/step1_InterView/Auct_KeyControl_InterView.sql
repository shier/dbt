{{ config(materialized='view',schema='stg')}}
Select
	[KEYCONTROLID] [KeyControlID],
	[ACTIVE] [Active],
	[CURRENTKEYCONTROLTRANSACTIONID] [CurrentKeyControlTransactionID],
	[CONSIGNMENTID] [ConsignmentID]
From stg.[Auct_KeyControl_Raw]
