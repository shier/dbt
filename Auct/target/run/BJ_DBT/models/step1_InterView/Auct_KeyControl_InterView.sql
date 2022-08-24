create view "stg"."Auct_KeyControl_InterView__dbt_tmp" as
    
Select
	[KEYCONTROLID] [KeyControlID],
	[ACTIVE] [Active],
	[CURRENTKEYCONTROLTRANSACTIONID] [CurrentKeyControlTransactionID],
	[CONSIGNMENTID] [ConsignmentID]
From stg.[Auct_KeyControl_Raw]
