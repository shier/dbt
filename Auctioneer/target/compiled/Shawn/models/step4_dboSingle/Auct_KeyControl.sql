
Select
	cast([Active] as bit) [ACTIVE],
	cast([KeyControlID] as int) [KEYCONTROLID],
	cast([CurrentKeyControlTransactionID] as int) [CURRENTKEYCONTROLTRANSACTIONID],
	cast([ConsignmentID] as int) [CONSIGNMENTID] 
From stg.[Auct_KeyControl_FinalView]